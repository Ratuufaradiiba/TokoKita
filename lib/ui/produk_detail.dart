import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';

import 'detail/components/body_detail.dart';

class ProdukDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetail(),
    );
  }
}