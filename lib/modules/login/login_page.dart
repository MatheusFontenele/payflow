import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              width: size.width,
              height: size.height * 0.36,
            ),
            Positioned(
              top: size.height * 0.08,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImage.person,
                width: 208,
                height: 373,
              ),
            ),
            Positioned(
              bottom: size.height * .08,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(AppImage.codeBarSmall),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 20),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      style: AppTextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 50),
                    child: SocialButton(
                      onTap: () async {
                        GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
                          'email',
                        ]);
                        try {
                          final response = await _googleSignIn.signIn();
                          print(response);
                        } catch (error) {
                          print(error);
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
