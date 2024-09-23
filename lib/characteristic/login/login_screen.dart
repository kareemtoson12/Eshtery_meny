import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';

import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/text_field_scoial.dart';
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
                    GestureDetector(
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
                          'Login',
                          style: AppTextStyles.font20WhiteBlod,
                        )),
                      ),
                      onTap: () {},
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Don’t haven an account ? Signup',
                          style: AppTextStyles.font20blackRegular),
                    )
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
