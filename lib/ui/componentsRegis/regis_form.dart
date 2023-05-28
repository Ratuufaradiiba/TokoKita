import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

import '../../bloc/registrasi_bloc.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constants.dart';
import '../../size_config.dart';
import '../../widget/success_dialog.dart';
import '../../widget/warning_dialog.dart';

class RegisForm extends StatefulWidget {
  @override
  State<RegisForm> createState() => _RegisFormState();
}

class _RegisFormState extends State<RegisForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  final List<String> errors = [];
  final _namaTextboxController = TextEditingController();
  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNamaFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPassFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPassKonfirmField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          DefaultButton(
            text: "Daftar",
            press: () {
              var validate = _formKey.currentState!.validate();
              if (validate) {
                if (!_isLoading) _submit();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPassKonfirmField() {
    return TextFormField(
      onChanged: (value) {
        if (value == _passwordTextboxController.text) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password Konfirmasi",
        hintText: "Masukan Password Kamu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: SvgPicture.asset(
            "assets/icons/Lock.svg",
            height: getProportionateScreenWidth(20),
          ),
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (value) {
        //jika karakter yang dimasukkan kurang dari 6 karakter
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          return "";
        } else if (value != _passwordTextboxController.text) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildNamaFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
        } else if (value.length < 3 && errors.contains(kShortNameError)) {
          setState(() {
            errors.remove(kShortNameError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nama",
        hintText: "Masukan Namamu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: SvgPicture.asset(
            "assets/icons/User.svg",
            height: getProportionateScreenWidth(18),
          ),
        ),
      ),
      controller: _namaTextboxController,
      validator: (value) {
        //validasi harus diisi
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kNameNullError);
          });
          return "";
        } else if (value.length < 3 && !errors.contains(kShortNameError)) {
          setState(() {
            errors.add(kShortNameError);
          });
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildPassFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length < 6 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        value != _passwordTextboxController.text;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukan Password Kamu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: SvgPicture.asset(
            "assets/icons/Lock.svg",
            height: getProportionateScreenWidth(20),
          ),
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextboxController,
      validator: (value) {
        //jika karakter yang dimasukkan kurang dari 6 karakter
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 6 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        //validasi harus diisi
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Masukan E-mail Kamu",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
            getProportionateScreenWidth(20),
          ),
          child: SvgPicture.asset(
            "assets/icons/Mail.svg",
            height: getProportionateScreenWidth(18),
          ),
        ),
      ),
      controller: _emailTextboxController,
      validator: (value) {
        //validasi harus diisi
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
    );
  }

  void _submit() {
    _formKey.currentState!.save();
    setState(() {
      _isLoading = true;
    });
    RegistrasiBloc.registrasi(
            nama: _namaTextboxController.text,
            email: _emailTextboxController.text,
            password: _passwordTextboxController.text)
        .then((value) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => SuccessDialog(
                description: "Registrasi berhasil, silahkan login",
                okClick: () {
                  Navigator.pop(context);
                },
              ));
    }, onError: (error) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) => const WarningDialog(
                description: "Registrasi gagal, silahkan coba lagi",
              ));
    });
    setState(() {
      _isLoading = false;
    });
  }
}
