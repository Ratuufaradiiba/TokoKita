import 'package:flutter/material.dart';
import 'package:tokokita/ui/login_page.dart';
import 'package:tokokita/ui/registrasi_page.dart';

import '../constants.dart';
import '../size_config.dart';
import '../screens/forgot_password/forgot_password_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Masih belum punya akun? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
              onTap: () {
              Route route = MaterialPageRoute(builder: (context) => RegistrasiPage());
                        Navigator.push(context, route);},
          child: Text(
            "Yuk Daftar",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
