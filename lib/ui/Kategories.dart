import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/model/Kategori.dart';


class Kategories extends StatelessWidget {
  const Kategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          child: KategoriCard(
            image: demo_categories[index].image,
            title: demo_categories[index].title,
            press: () {},
          ),
        ),
      )),
    );
  }
}

class KategoriCard extends StatelessWidget {
  const KategoriCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 4, vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}
