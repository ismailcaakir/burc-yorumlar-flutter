import 'package:flutter/material.dart';
import 'package:gunlukburc/views/comment/layouts/comment_layout.dart';
import 'package:provider/provider.dart';
// import model
import 'package:gunlukburc/models/comment/comment_model.dart';
// import controller
// import 'package:gunlukburc/controllers/comment/comment_controller.dart';

class CommentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CommentController viewController = CommentController();
    return ChangeNotifierProvider<CommentModel>(
      create: (context) => CommentModel.instance(),
      child: Consumer<CommentModel>(
        builder: (context, viewModel, child) {
          return CommentLayout();
        },
      ),
    );
  }
}