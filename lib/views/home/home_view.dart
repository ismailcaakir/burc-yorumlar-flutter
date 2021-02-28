import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import layout
import 'package:gunlukburc/views/home/layouts/home_layout.dart';
// import model
import 'package:gunlukburc/models/home/home_model.dart';
// import controller
// import 'package:gunlukburc/controllers/home/home_controller.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // HomeController viewController = HomeController();
    return ChangeNotifierProvider<HomeModel>(
      create: (context) => HomeModel.instance(),
      child: Consumer<HomeModel>(
        builder: (context, viewModel, child) {
          return HomeLayout();
        },
      ),
    );
  }
}