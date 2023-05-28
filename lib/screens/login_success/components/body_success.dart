import 'package:flutter/material.dart';
import 'package:tokokita/components/default_button.dart';
import 'package:tokokita/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/wait.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Tunggu Sebentar ya ...",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
   Spacer(),
      ],
    );
  }
}
