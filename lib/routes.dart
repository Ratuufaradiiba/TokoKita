import 'package:flutter/material.dart';
import 'package:tokokita/screens/splash/splash_screen.dart';
import 'package:tokokita/screens/forgot_password/forgot_password_screen.dart';
import 'package:tokokita/screens/login_success/login_success_screen.dart';

//we use name routes
//all our routes will be available here
final Map<String, WidgetBuilder> routes ={
  SplashScreen.routeName:(context) => SplashScreen(), 
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
