import 'package:flutter/material.dart';
import 'package:tokokita/constants.dart';

class TitlewithCustomUnderline extends StatelessWidget {
  const TitlewithCustomUnderline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              "Tanaman yang kami sediakan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
