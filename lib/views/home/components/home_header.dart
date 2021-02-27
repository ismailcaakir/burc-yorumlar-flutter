import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gunlukburc/commons/colors.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hoşgeldin',
          style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.GREY,
          ),
        ),
        Text(
          'Burcunu seçerek başla.',
          style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: AppColors.GREY,
          ),
        ),
        Text(''),
        Text(
          'Burcunu Seç',
          style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: AppColors.WHITE,
          ),
        ),
      ],
    );
  }
}
