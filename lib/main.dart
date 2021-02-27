import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: GoogleFonts.notoSansTextTheme(),
        colorScheme: ColorScheme.dark(),
        primaryColor: AppColors.ORANGE,
        appBarTheme: AppBarTheme(
          color: AppColors.WHITE,
        ),
      ),
      home: HomeView(),
    );
  }
}
