import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HoroscopeListModel {
  final String horoscopeKey;
  final String name;
  final String image;
  final String between;

  HoroscopeListModel({this.horoscopeKey, this.name, this.image, this.between});

  factory HoroscopeListModel.fromJson(Map<String, dynamic> json) {
    return HoroscopeListModel(
      horoscopeKey: json['horoscope_key'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      between: json['between'] as String,
    );
  }

  static List<HoroscopeListModel> parseData(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<HoroscopeListModel>((json) => HoroscopeListModel.fromJson(json)).toList();
  }

  static Future<List<HoroscopeListModel>> fetchData(http.Client client) async {
    final response = await client.get('https://gist.githubusercontent.com/ismailcaakir/b1c17d29765265877b19a67a89ded678/raw/65da9d56dda6d02ab1ef1f3a636a385f3fbe00a8/gistfile1.txt');
    return compute(parseData, response.body);
  }
}
