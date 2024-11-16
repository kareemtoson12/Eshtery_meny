import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/continoue_with_social.dart';

import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/next_button.dart';

import 'package:eshtry_meny/shared/widgets/text_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.white,
      appBar: customAppBar('Login', 'Hi ! welcome back have fun'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25.dm,
                        bottom: 15.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const ContinoueWithSocial(
                        iamgePath: 'assets/pngimages/googleIcon.png',
                        socialMediaName: 'Continue with Google',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.dm,
                        bottom: 15.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const ContinoueWithSocial(
                        iamgePath: 'assets/pngimages/facebookIcon.png',
                        socialMediaName: 'Continue with facebook',
                      ),
                    ),
                    Text(
                      'Or',
                      style: AppTextStyles.font20PurpuleRegular,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.dm,
                        bottom: 20.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const CsutomTextFiled(
                        prefexIcon: Icon(Icons.email),
                        textOftextField: 'Email',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 2.dm,
                        bottom: 0.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const CsutomTextFiled(
                        prefexIcon: Icon(Icons.lock),
                        textOftextField: 'Password',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password ?',
                            style: AppTextStyles.font18GrayRegular,
                          ),
                        ),
                      ],
                    ),
                    nextButton('Login'),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Routes.signUPScreen);
                        },
                        child: Text(
                          'Don’t haven an account ? Signup',
                          style: AppTextStyles.font20blackRegular,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
