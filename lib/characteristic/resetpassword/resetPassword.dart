import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/next_button.dart';
import 'package:eshtry_meny/shared/widgets/text_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('  Reset password', ''),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.dg),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Enter new password',
                    style: AppTextStyles.font18blackbold,
                  ),
                ],
              ),
              SizedBox(
                height: 90.h,
              ),
              Padding(
                  padding: EdgeInsets.all(8.0.dg),
                  child:
                      null /*  const CsutomTextFiled(
                  prefexIcon: Icon(Icons.lock),
                  textOftextField: 'Password',
                ), */
                  ),
              Padding(
                  padding: EdgeInsets.all(8.0.dg),
                  child:
                      null /*  const CsutomTextFiled(
                  prefexIcon: Icon(Icons.lock),
                  textOftextField: 'Password',
                ), */
                  ),
              SizedBox(
                height: 100.h,
              ),
              nextButton('Confirm'),
            ],
          ),
        ),
      )),
    );
  }
}
