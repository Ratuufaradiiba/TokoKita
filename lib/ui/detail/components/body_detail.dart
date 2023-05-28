import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/screens/keranjang/keranjang_page.dart';
import 'package:tokokita/ui/detail/components/titleandprice.dart';

import '../../../model/produk.dart';
import 'icon_card.dart';
import 'image_and_icon.dart';

class BodyDetail extends StatefulWidget {
  Produk? produk;

  BodyDetail({Key? key, this.produk}) : super(key: key);
  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleandPrice(
            title: "Peperomia",
            country: "Amerika Selatan",
            price: 18000,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: 392,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                  },
                  child: Text(
                    "Beli Sekarang",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
