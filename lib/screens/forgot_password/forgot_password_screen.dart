import 'package:flutter/material.dart';

import 'package:tokokita/screens/forgot_password/components/body_forgot.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lupa Password"),
      ),
      body: Body(),
    );
  }
}
