import 'package:flutter/material.dart';

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

  CommentModel();

  CommentModel.instance() {
    //TODO Add code here
  }
  
  void getter() {
    _status = CommentModelStatus.Loading;
    notifyListeners();

    //TODO Add code here

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