import 'package:flutter/material.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/views/comment/components/comment_content.dart';

import 'package:gunlukburc/controllers/comment/comment_controller.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:provider/provider.dart';
import 'package:gunlukburc/views/comment/components/comment_date_menu_tab.dart';
import 'package:gunlukburc/views/comment/components/comment_header.dart';

class CommentLayout extends StatefulWidget {
  @override
  _CommentLayoutState createState() => _CommentLayoutState();
}

class _CommentLayoutState extends State<CommentLayout> {
  String selectedHoroscope;

  @override
  Widget build(BuildContext context) {
    CommentController viewController = CommentController();
    final viewModel = Provider.of<CommentModel>(context);

    print(viewModel.horoscopes);
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
        child: (viewModel.status == CommentModelStatus.Loading)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: CommentHeader(
                        pageTitle: viewModel.selectedHoroscopeKey,
                        horoscopeListModel: viewModel.horoscopes,
                        selectedHoroscopeKey: viewModel.selectedHoroscopeKey,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.4, 1, 1],
                            colors: [
                              AppColors.DARKBLUE,
                              AppColors.DARKBLUE_5,
                              Colors.transparent,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: CommentDateMenuTab(),
                            ),
                            Expanded(
                              flex: 10,
                              child: CommentContent(),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
