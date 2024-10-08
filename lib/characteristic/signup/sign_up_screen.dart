import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/text_field_scoial.dart';
import 'package:eshtry_meny/shared/widgets/text_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/styles/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('SignUp', 'Hi ! nice to see you'),
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
                      child: const CsutomTextFiledSocial(
                        prefexIcon: 'assets/pngimages/googleIcon.png',
                        textOftextField: 'Continue with Google',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.dm,
                        bottom: 15.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const CsutomTextFiledSocial(
                        prefexIcon: 'assets/pngimages/facebookIcon.png',
                        textOftextField: 'Continue with Facebook',
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.dm,
                        bottom: 0.dm,
                        left: 20.dm,
                        right: 20.dm,
                      ),
                      child: const CsutomTextFiled(
                        prefexIcon: Icon(Icons.lock),
                        textOftextField: 'Confirm password',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.dg),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(Routes.loginScreen);
                            },
                            child: Text(
                              'Already have an account ? Login ?',
                              style: AppTextStyles.font20blackRegular,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          margin: EdgeInsets.symmetric(horizontal: 110.w),
                          decoration: const BoxDecoration(
                              color: CustomsColros.primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Center(
                              child: Text(
                            'Signup',
                            style: AppTextStyles.font20WhiteBlod,
                          )),
                        ),
                        onTap: () {},
                      ),
                    ),
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
