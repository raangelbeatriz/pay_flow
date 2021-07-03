import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:pay_flow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:pay_flow/modules/home/home_page.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/modules/splash/splash_page.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
            primaryColor: AppColors.primary,
            primarySwatch: Colors.orange,
            backgroundColor: AppColors.background),
        initialRoute: "/splash",
        routes: {
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/splash": (context) => SplashPage(),
          "/barCode": (context) => BarCodeScannerPage(),
        });
  }
}
