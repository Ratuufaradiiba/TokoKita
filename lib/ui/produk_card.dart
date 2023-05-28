import 'package:flutter/material.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/model/Produks.dart';

import '../size_config.dart';

class ProdukCard extends StatelessWidget {
  const ProdukCard({
    Key? key,
    required this.press,
    required this.product,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius))),
              child: Image.asset(
                product.image,
                height: 132,
              ),
            ),
            Text(
              product.title,
              style: const TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Text(
              "Rp.${product.price}",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(13),
                fontWeight: FontWeight.w600,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
