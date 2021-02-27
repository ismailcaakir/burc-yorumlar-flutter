import 'package:flutter/material.dart';
import 'package:gunlukburc/models/home/horoscope_list_model.dart';
import 'package:http/http.dart' as http;

enum HomeModelStatus {
  Ended,
  Loading,
  Error,
}

class HomeModel extends ChangeNotifier {
  HomeModelStatus _status;
  String _errorCode;
  String _errorMessage;

  String get errorCode => _errorCode;
  String get errorMessage => _errorMessage;
  HomeModelStatus get status => _status;

  List<HoroscopeListModel> _horoscopes = [];
  List<HoroscopeListModel> get horoscopes => _horoscopes;

  HomeModel();

  HomeModel.instance() {
    getter();
  }
  
  Future<void> getter() async {
    _status = HomeModelStatus.Loading;
    notifyListeners();

    try {
      _horoscopes = await HoroscopeListModel.fetchData(http.Client());
      _status = HomeModelStatus.Ended;
    } catch (e) {
      _errorMessage = e.toString();
      _status = HomeModelStatus.Error;
    }


    _status = HomeModelStatus.Ended;
    notifyListeners();
  }

  void setter() {
    _status = HomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = HomeModelStatus.Ended;
    notifyListeners();
  }

  void update() {
    _status = HomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = HomeModelStatus.Ended;
    notifyListeners();
  }

  void remove() {
    _status = HomeModelStatus.Loading;
    notifyListeners();

    //TODO Add code here
    
    _status = HomeModelStatus.Ended;
    notifyListeners();
  }
}