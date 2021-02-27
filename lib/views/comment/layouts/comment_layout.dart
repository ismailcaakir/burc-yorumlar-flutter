import 'package:flutter/material.dart';
import 'package:gunlukburc/controllers/comment/comment_controller.dart';
import 'package:gunlukburc/controllers/home/home_controller.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:provider/provider.dart';

class CommentLayout extends StatefulWidget {
  @override
  _CommentLayoutState createState() => _CommentLayoutState();
}

class _CommentLayoutState extends State<CommentLayout> {
  @override
  Widget build(BuildContext context) {
    CommentController viewController = CommentController();
    final viewModel = Provider.of<CommentModel>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Text('s'),
        ),
      ),
    );
  }
}
