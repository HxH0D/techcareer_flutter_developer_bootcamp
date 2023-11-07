import 'package:flutter/material.dart';
import 'package:odev3/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var textData = AppLocalizations.of(context)!;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(64),
            ),
            child: Stack(
              children: [
                Image.asset(
                  "images/image-1.jpg",
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth / 12, vertical: screenWidth / 7),
                    child: Text(
                      textData.test1,
                      style: TextStyle(
                        fontSize: screenWidth / 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Widget1(
                  icon: "images/hotel.png",
                  text: textData.hotelText,
                ),
                Widget1(
                  icon: "images/restaurant.png",
                  text: textData.restaurantText,
                ),
                Widget1(
                  icon: "images/bus.png",
                  text: textData.busText,
                ),
                Widget1(
                  icon: "images/airplane.png",
                  text: textData.airwaysText,
                ),
              ],
            ),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: appColor,
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 6, vertical: screenWidth / 32),
            ),
            onPressed: () {},
            child: Text(
              textData.loginText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth / 18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: screenWidth / 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textData.forgotPasswordText,
                  style: TextStyle(color: textColor2, fontWeight: FontWeight.bold, fontSize: screenWidth / 28),
                ),
                Column(
                  children: [
                    Text(
                      textData.haventAccountText ,
                      style: TextStyle(color: textColor2, fontWeight: FontWeight.bold, fontSize: screenWidth / 28),
                    ),
                    Text(
                      textData.registerNowText,
                      style: TextStyle(
                        color: appColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 28,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  String icon;
  String text;

  Widget1({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              screenWidth / 50,
            ),
          ),
          child: Container(
              color: appColor2,
              height: screenWidth / 5,
              width: screenWidth / 5,
              child: Image.asset(
                icon,
                scale: screenWidth / 225,
              )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text,
            style: TextStyle(color: textColor2, fontWeight: FontWeight.bold, fontSize: screenWidth / 28),
          ),
        )
      ],
    );
  }
}
