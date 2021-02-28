import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/models/comment/comment_model.dart';
import 'package:gunlukburc/models/home/horoscope_list_model.dart';
import 'package:provider/provider.dart';

class CommentHeader extends StatefulWidget {
  @override
  _CommentHeaderState createState() => _CommentHeaderState();
}

class _CommentHeaderState extends State<CommentHeader> {

  String pageTitle;
  String selectedHoroscopeKey;
  int selectedHoroscopeCarouselIndex;
  List<HoroscopeListModel> horoscopeListModel;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CommentModel>(context);

    setState(() {
      this.horoscopeListModel = viewModel.horoscopes;
      this.selectedHoroscopeKey = viewModel.selectedHoroscopeKey;
    });

    return Container(
      color: Colors.black38,
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.pageTitle.toString(),
                    style: TextStyle(
                      color: AppColors.WHITE,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 130,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  height: 125,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.3,
                  onPageChanged: horoscopeCarouselPageChanged,
                  initialPage: 1,
                  enlargeCenterPage: true,
                ),
                items: viewModel.horoscopes.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: EdgeInsets.all(0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/images/burc/' + i.image + '.svg',
                                height: viewModel.selectedHoroscopeKey == i.horoscopeKey ? 120 : 84,
                                width: viewModel.selectedHoroscopeKey == i.horoscopeKey ? 120 : 84,
                              ),
                              Text(
                                i.name,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.GREY,
                                ),
                              )
                            ]),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.DARKBLUE_5,
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/images/icon/jupiter.svg',
                        height: 29,
                        width: 29,
                      ),
                      Text(
                        'Jüpiter',
                        style: TextStyle(
                          color: AppColors.WHITE,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.DARKBLUE_5,
                  ),
                  padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/images/icon/toprak.svg',
                          height: 29, width: 29),
                      Text(
                        'Toprak',
                        style: TextStyle(
                          color: AppColors.WHITE,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  horoscopeCarouselPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      this.horoscopeListModel.asMap().forEach((key, value) {
        if(index == key) {
          this.pageTitle = value.name;
        }
      });
    });
  }
}
