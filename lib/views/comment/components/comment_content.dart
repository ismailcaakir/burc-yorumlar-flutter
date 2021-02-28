import 'package:flutter/material.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:provider/provider.dart';

class CommentContent extends StatefulWidget {
  @override
  _CommentContentState createState() => _CommentContentState();
}

class _CommentContentState extends State<CommentContent> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CommentModel>(context);

    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: (viewModel.commentApiStatus == CommentModelStatus.Ended)
              ? Column(
                  children: <Widget>[
                    Text(
                      viewModel.commentFromApi.first.mottosu,
                      style: TextStyle(
                        color: AppColors.WHITE,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      height: 30,
                    ),
                    Text(
                      viewModel.commentFromApi.first.yorum,
                      style: TextStyle(
                        color: AppColors.AMBER_1,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Divider(height: 80,)
                  ],
                )
              : Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
        ),
      ),
    );
  }
}
