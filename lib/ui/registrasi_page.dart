import 'package:flutter/material.dart';
import 'componentsRegis/body_registrasi.dart';

class RegistrasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Daftar"),
      ),
      body: BodyRegistrasi(),
    );
  }
}
