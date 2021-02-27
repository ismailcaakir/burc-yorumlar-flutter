import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/controllers/home/home_controller.dart';
import 'package:gunlukburc/models/home/home_model.dart';
import 'package:gunlukburc/views/home/components/home_header.dart';
import 'package:gunlukburc/views/home/components/horoscope_item.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController viewController = HomeController();
    final viewModel = Provider.of<HomeModel>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: HomeHeader(),
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Expanded(
                flex: 7,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: viewModel.horoscopes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: HoroscopeItem(
                        keyId: viewModel.horoscopes[index].horoscope_key,
                        name: viewModel.horoscopes[index].name,
                        image: viewModel.horoscopes[index].image,
                        between: viewModel.horoscopes[index].between,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ButtonTheme(
                      height: 53,
                      minWidth: MediaQuery.of(context).size.width * 0.88,
                      child: RaisedButton(
                        child: Text(
                          'Devam Et',
                          style:
                              TextStyle(fontSize: 20, color: AppColors.WHITE),
                        ),
                        color: AppColors.ORANGE,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () => {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
