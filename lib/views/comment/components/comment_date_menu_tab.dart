import 'package:flutter/material.dart';
import 'package:gunlukburc/commons/colors.dart';
// import 'package:gunlukburc/models/comment/comment_model.dart';
// import 'package:provider/provider.dart';
import 'package:turkish/turkish.dart';

class CommentDateMenuTab extends StatefulWidget {
  @override
  _CommentDateMenuTabState createState() => _CommentDateMenuTabState();
}

class _CommentDateMenuTabState extends State<CommentDateMenuTab> {
  int _pressedButtonIndex = 0;

  List<String> buttonType = [
    'Günlük',
    'Haftalık',
    'Aylık',
    'Yıllık',
    'Kariyer',
    'Aşk'
  ];

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<CommentModel>(context);

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 0, left: 20),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: buttonType.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.fromLTRB(0, 20, 10, 20),
          child: ButtonTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: FlatButton(
              color: index == this._pressedButtonIndex ? AppColors.ORANGE : Colors.transparent,
              onPressed: () => {_getCommentApiFromType(index)},
              child: Text(
                turkish.toTitleCase(buttonType[index]),
                style: TextStyle(
                  color: AppColors.WHITE,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _getCommentApiFromType(int index) {
    setState(() {
      _pressedButtonIndex = index;
    });
  }
}
