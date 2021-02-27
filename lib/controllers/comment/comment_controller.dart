import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:gunlukburc/models/comment/comment_model.dart';

class CommentController {
  CommentController();
  
  void getter(BuildContext context) {
    CommentModel viewModel = Provider.of<CommentModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    CommentModel viewModel = Provider.of<CommentModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    CommentModel viewModel = Provider.of<CommentModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    CommentModel viewModel = Provider.of<CommentModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}