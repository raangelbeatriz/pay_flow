import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
          primaryColor: AppColors.primary,
          backgroundColor: AppColors.background),
      home: LoginPage(),
    );
  }
}
