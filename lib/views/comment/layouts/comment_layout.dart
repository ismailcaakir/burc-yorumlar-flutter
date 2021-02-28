import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gunlukburc/commons/colors.dart';

// import 'package:gunlukburc/controllers/comment/comment_controller.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:gunlukburc/views/comment/components/comment_header.dart';
import 'package:provider/provider.dart';

class CommentLayout extends StatefulWidget {
  @override
  _CommentLayoutState createState() => _CommentLayoutState();
}

class _CommentLayoutState extends State<CommentLayout> {
  String selectedHoroscope;

  @override
  Widget build(BuildContext context) {
    // CommentController viewController = CommentController();
    final viewModel = Provider.of<CommentModel>(context);
    CarouselController buttonCarouselController = CarouselController();

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
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: CommentHeader(),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  color: AppColors.DARKBLUE,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 1,
                          margin: EdgeInsets.only(right: 30, left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Günlük',
                                style: TextStyle(
                                  color: AppColors.WHITE,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Haftalık',
                                style: TextStyle(
                                  color: AppColors.WHITE,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Aylık',
                                style: TextStyle(
                                  color: AppColors.WHITE,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Yıllık',
                                style: TextStyle(
                                  color: AppColors.WHITE,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 1,
                          color: Colors.transparent,
                          child: Text('1'),
                        ),
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
