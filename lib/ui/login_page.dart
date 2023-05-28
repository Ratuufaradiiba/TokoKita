import 'package:flutter/material.dart';
import 'package:tokokita/ui/components/body_login.dart';

import 'components/body_login.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login")),
      body: BodyLogin());
}
}