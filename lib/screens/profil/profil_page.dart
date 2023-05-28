import 'package:flutter/material.dart';
import 'package:tokokita/components/custom_buttom.dart';
import 'package:tokokita/screens/profil/components/body.dart';

import '../../enums.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}