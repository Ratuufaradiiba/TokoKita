import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image, title;
  final int price;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> demo_product = [
  Product(
    id: 1,
    image: "assets/images/poto1.png",
    title: "Peperomia",
    price: 18000,
  ),
  Product(
    id: 2,
    image: "assets/images/poto2.png",
    title: "Strelitzia Nicolai",
    price: 449000,
  ),
  Product(
    id: 3,
    image: "assets/images/poto3.png",
    title: "Sansevieria",
    price: 42500,
  ),
  Product(
    id: 4,
    image: "assets/images/poto4.png",
    title: "Tropica Anubias",
    price: 300000,
  ),
  Product(
    id: 5,
    image: "assets/images/poto5.png",
    title: "Echeveria Peacockii",
    price: 230000,
  ),
];
