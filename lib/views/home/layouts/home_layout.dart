import 'package:flutter/material.dart';
import 'package:gunlukburc/commons/colors.dart';
import 'package:gunlukburc/controllers/home/home_controller.dart';
import 'package:gunlukburc/models/home/home_model.dart';
import 'package:gunlukburc/views/home/components/home_header.dart';
import 'package:gunlukburc/views/home/components/horoscope_item.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  String _isSelectedButton = "";

  @override
  Widget build(BuildContext context) {
    HomeController viewController = HomeController();
    final viewModel = Provider.of<HomeModel>(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/bg.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: (viewModel.status == HomeModelStatus.Loading)
              ? Center(
                  child: CircularProgressIndicator(
                      backgroundColor: AppColors.ORANGE),
                )
              : Column(
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
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.all(5),
                            child: FlatButton(
                              color: Colors.transparent,
                              key:
                                  Key(viewModel.horoscopes[index].horoscopeKey),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: (this._isSelectedButton == viewModel.horoscopes[index].horoscopeKey) ? Colors.amber : Colors.transparent,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () => {
                                _selectHoroscope(
                                    viewModel.horoscopes[index].horoscopeKey)
                              },
                              child: HoroscopeItem(
                                keyId: viewModel.horoscopes[index].horoscopeKey,
                                name: viewModel.horoscopes[index].name,
                                image: viewModel.horoscopes[index].image,
                                between: viewModel.horoscopes[index].between,
                              ),
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
                                style: TextStyle(
                                    fontSize: 20, color: AppColors.WHITE),
                              ),
                              color: AppColors.ORANGE,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () => { _isSelectedButton.isNotEmpty ? _detailPage(_isSelectedButton) : null},
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

  _selectHoroscope(String horoscopeKey) {
    setState(() {
      this._isSelectedButton = horoscopeKey;
    });
  }

  _detailPage(String isSelectedButton) {

    print(isSelectedButton);
  }

}

