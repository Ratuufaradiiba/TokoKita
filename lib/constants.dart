import 'package:flutter/material.dart';
import 'package:tokokita/size_config.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF3C4046);

const kBackgroundColor = Color(0xFFF9F8FD);
const Color bgColor = Color(0xFFFBFBFD);
const double defaultBorderRadius = 12.0;

const double kDefaultPadding = 16.0;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Kamu harus isi Email dulu";
const String kInvalidEmailError = "Masukin Email yang valid dong";
const String kPassNullError = "Kamu harus isi Password dulu";
const String kShortPassError = "Passwordmu terlalu pendek";
const String kMatchPassError = "Passwordmu tidak sama";
const String kNameNullError = "Kamu harus isi Nama dulu";
const String kShortNameError = "Namamu terlalu pendek";
const String kKodeNullError = "Kamu harus isi Kode Produk dulu";
const String kNamaProdukNullError = "Kamu harus isi Nama Tanaman dulu";
const String kHargaNullError = "Kamu harus isi Harga Tanamannya dulu";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
