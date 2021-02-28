import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class CommentApiModel {
  final String mottosu;
  final String gezegeni;
  final String elementi;
  final String yorum;

  CommentApiModel({this.mottosu, this.gezegeni, this.elementi, this.yorum});

  factory CommentApiModel.fromJson(Map<String, dynamic> json) {
    return CommentApiModel(
        mottosu: json['Mottosu'] as String,
        gezegeni: json['Gezegeni'] as String,
        elementi: json['Elementi'] as String,
        yorum: (json['GunlukYorum'] != null ? json['GunlukYorum'] : json['Yorum']) as String,
    );
  }

  static List<CommentApiModel> parseData(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<CommentApiModel>((json) => CommentApiModel.fromJson(json)).toList();
  }

  static Future<List<CommentApiModel>> fetchData(http.Client client, String horoscopeKey, [String type]) async {
    var endpoint = "https://burc-yorumlari.herokuapp.com/get/" + horoscopeKey;

    if (type.isNotEmpty) {
      switch (type.toLowerCase()) {
        case 'haftalık':
          endpoint = endpoint + '/haftalik';
          break;
        case 'aylık':
          endpoint = endpoint + '/aylik';
          break;
        case 'yıllık':
          endpoint = endpoint + '/yillik';
          break;
      }
    }

    print(endpoint);
    final response = await client.get(endpoint);
    return compute(parseData, response.body);
  }
}
