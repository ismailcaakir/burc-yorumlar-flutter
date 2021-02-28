import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gunlukburc/models/home/horoscope_list_model.dart';
import 'package:http/http.dart' as http;

enum CommentModelStatus {
  Ended,
  Loading,
  Error,
}

class CommentModel extends ChangeNotifier {
  CommentModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  CommentModelStatus get status => _status;

  List<HoroscopeListModel> _horoscopes = [];
  List<HoroscopeListModel> get horoscopes => _horoscopes;
  String _selectedHoroscopeKey;
  String get selectedHoroscopeKey => _selectedHoroscopeKey;


  CommentModel();

  CommentModel.instance() {
    getter();
  }
  
  Future<void> getter() async {
    _status = CommentModelStatus.Loading;
    notifyListeners();

    try {
      _horoscopes = await HoroscopeListModel.fetchData(http.Client());
      _selectedHoroscopeKey = Get.parameters as String;
      print(_selectedHoroscopeKey);
      _status = CommentModelStatus.Ended;
    } catch (e) {
      _errorMessage = e.toString();
      _status = CommentModelStatus.Error;
    }

    _status = CommentModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = CommentModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CommentModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = CommentModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CommentModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = CommentModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = CommentModelStatus.Ended;
    notifyListeners();
  }
}