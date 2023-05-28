import 'package:flutter/material.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/model/Produks.dart';
import 'package:tokokita/ui/produk_card.dart';
import 'package:tokokita/ui/produk_detail.dart';
import 'package:tokokita/ui/section_title.dart';

class Populer extends StatelessWidget {
  const Populer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: SectionTitle(
            title: "Populer",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                child: ProdukCard(
                   product: demo_product[index],
                  press: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdukDetail()
                      ),
                  );
                        },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
