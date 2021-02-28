import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
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
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: GoogleFonts.notoSansTextTheme(),
        colorScheme: ColorScheme.dark(),
        backgroundColor: Colors.transparent,
        primaryColor: AppColors.ORANGE,
        appBarTheme: AppBarTheme(
          color: AppColors.WHITE,
        ),
      ),
      home: HomeView(),
    );
  }
}
