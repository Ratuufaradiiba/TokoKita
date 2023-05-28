import 'package:flutter/material.dart';
import 'package:tokokita/screens/login_success/components/body_success.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_succsess";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text("Prosessing"),
      ),
      body: Body()
    );
  }
}
