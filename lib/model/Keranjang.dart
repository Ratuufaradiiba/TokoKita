import 'package:flutter/material.dart';
import 'package:tokokita/model/Produks.dart';


class Keranjang {
  final Product product;
  final int numOfItem;

  Keranjang({required this.product, required this.numOfItem});
}

// Demo data for our Keranjang

List<Keranjang> demoKeranjang = [
  Keranjang(product: demo_product[0], numOfItem: 2),
  Keranjang(product: demo_product[1], numOfItem: 1),
  Keranjang(product: demo_product[3], numOfItem: 1),
];