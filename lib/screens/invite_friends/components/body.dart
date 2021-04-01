import 'package:flutter/material.dart';
import 'package:payani/components/default_button.dart';
import 'package:payani/screens/home/home_screen.dart';
import 'package:payani/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        // Image.asset(
        //   "assets/images/success.png",
        //   height: SizeConfig.screenHeight * 0.49, //40%
        // ),
        SizedBox(height: SizeConfig.screenHeight * 0.01),
        Text(
          "Invite Friends Now",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        //Spacer(),
        SizedBox(height: SizeConfig.screenHeight * 0.001),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.49, //40%
        ),
        SizedBox(
          width: SizeConfig.screenWidth * 0.9,
          child: DefaultButton(
            text: "Invite Your Friends",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    ));
  }
}
