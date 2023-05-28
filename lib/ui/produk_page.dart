import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokokita/bloc/logout_bloc.dart';
import 'package:tokokita/bloc/produk_bloc.dart';
import 'package:tokokita/components/custom_buttom.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/model/Produks.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/size_config.dart';
import 'package:tokokita/ui/Kategories.dart';
import 'package:tokokita/ui/keluaranterbaru.dart';
import 'package:tokokita/ui/populer.dart';
import 'package:tokokita/ui/produk_card.dart';
import 'package:tokokita/ui/search_form.dart';
import 'package:tokokita/ui/login_page.dart';
import 'package:tokokita/ui/produk_detail.dart';
import 'package:tokokita/ui/section_title.dart';

import '../enums.dart';
import '../model/Kategori.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              "Jl Dahlia IV Jakarta",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          InkWell(
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Notification.svg"),
                ),
                Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: getProportionateScreenWidth(16),
                    width: getProportionateScreenWidth(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF4848),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          height: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pencarian",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Tanaman hias indah untukmu",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: SearchForm(),
            ),
            const Kategories(),
            const SizedBox(height: kDefaultPadding),
            const KeluaranTerbaru(),
            const SizedBox(height: kDefaultPadding),
            const Populer(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Logout'),
              trailing: const Icon(Icons.logout),
              onTap: () async {
                await LogoutBloc.logout().then((value) => {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()))
                    });
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
