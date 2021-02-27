import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HoroscopeItem extends StatelessWidget {
  final String keyId;
  final String name;
  final String image;
  final String between;

  HoroscopeItem({
    Key key,
    @required this.keyId,
    @required this.name,
    @required this.image,
    @required this.between,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        // shape: new RoundedRectangleBorder(
        //   borderRadius: new BorderRadius.circular(30.0),
        //   side: BorderSide(
        //     color: Colors.amber
        //   ),
        // ),
        onPressed: () => {},
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/images/burc/" + image + ".svg",
              width: 64,
              height: 64,
              placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(0.0),
                  child: const CircularProgressIndicator()),
            ),
            Divider(
              height: 12,
            ),
            Text(
              name,
              style: TextStyle(
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
