import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gunlukburc/commons/colors.dart';

class CommentHeader extends StatefulWidget {
  @override
  _CommentHeaderState createState() => _CommentHeaderState();
}

class _CommentHeaderState extends State<CommentHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2,
              enableInfiniteScroll: false,
              viewportFraction: 0.3,
              onPageChanged: horoscopeCarouselPageChanged,
              initialPage: 1,
              enlargeCenterPage: true,
            ),
            items: ['aslan', 'yay', 'balik', 'basak', 'kova', 'ikizler', 'akrep', 'terazi'].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/burc/'+i+'.svg',
                          height: 84,
                          width: 84,
                        ),
                        Text(
                          '$i',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColors.GREY,
                          ),
                        )
                      ]);
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.DARKBLUE_5,
                ),
                padding: EdgeInsets.fromLTRB(10,10,15,10),
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/icon/jupiter.svg', height: 29, width: 29,),
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
                padding: EdgeInsets.fromLTRB(10,10,15,10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset('assets/images/icon/toprak.svg', height: 29, width: 29),
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
        ],
      ),
    );
  }

  horoscopeCarouselPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {});
  }
}
