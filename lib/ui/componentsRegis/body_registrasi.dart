import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tokokita/components/default_button.dart';
import 'package:tokokita/components/form_error.dart';
import 'package:tokokita/constants.dart';
import 'package:tokokita/size_config.dart';
import 'package:tokokita/ui/componentsRegis/regis_form.dart';

import '../../bloc/registrasi_bloc.dart';
import '../../components/socal_card.dart';
import '../../widget/success_dialog.dart';
import '../../widget/warning_dialog.dart';

class BodyRegistrasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: 
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02), // 4%
                Text("Registrasi Akun", style: headingStyle),
                Text(
                  "Yuk Daftar atau Lanjutkan Mendaftar \ndengan Social Media Kamu",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
               RegisForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(23)),
                Text(
                  "Dengan daftar kamu berarti sudah menyetujui \nPerjanjian pengguna ya.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

