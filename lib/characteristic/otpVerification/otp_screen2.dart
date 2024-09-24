import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/next_button.dart';
import 'package:eshtry_meny/shared/widgets/text_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen2 extends StatelessWidget {
  const OtpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('  OTP Verification', ''),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.dg),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Enter verification code sent to',
                      style: AppTextStyles.font18blackbold,
                    ),
                    Text(
                      'your phone number',
                      style: AppTextStyles.font18blackbold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 90.h,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.dg),
                  child: const CsutomTextFiled(
                    prefexIcon: Icon(Icons.person),
                    textOftextField: 'Verification code',
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                nextButton('Next'),
              ],
            ),
          ),
        )));
  }
}
