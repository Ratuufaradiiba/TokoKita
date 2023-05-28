import 'package:flutter/material.dart';
import 'package:tokokita/model/Keranjang.dart';
import 'package:tokokita/screens/keranjang/components/Checkout.dart';
import 'package:tokokita/screens/keranjang/components/body_cart.dart';

class KeranjangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BodyCart(),
      bottomNavigationBar: CheckoutCard(),
      );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Isi Keranjangmu",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoKeranjang.length} Item",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
