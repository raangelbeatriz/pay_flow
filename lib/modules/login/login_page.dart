import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_controller.dart';
import 'package:pay_flow/modules/widgets/social_login_button.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';
import 'package:pay_flow/shared/themes/app_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
              top: 47,
              right: 0,
              left: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 300,
              ),
            ),
            Positioned(
              bottom: size.height * 0.1,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, right: 70, left: 70),
                    child: Text("Organize seus boletos em um só lugar",
                        textAlign: TextAlign.center,
                        style: TextStyles.titleHome),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(onTap: controller.googleSignIn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
