import 'package:flutter/material.dart';
import 'package:pay_flow/modules/home/home_page.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/modules/splash/splash_page.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
            primaryColor: AppColors.primary,
            backgroundColor: AppColors.background),
        initialRoute: "/splash",
        routes: {
          "/home": (context) => HomePage(),
          "login": (context) => LoginPage(),
          "/splash": (context) => SplashPage()
        });
  }
}
