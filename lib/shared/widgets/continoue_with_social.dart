import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinoueWithSocial extends StatelessWidget {
  final String iamgePath;
  final String socialMediaName;
  final isClick = false;

  const ContinoueWithSocial(
      {super.key, required this.iamgePath, required this.socialMediaName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(socialMediaName);
        },
        child: Container(
          padding: EdgeInsets.all(20.dg),
          decoration: BoxDecoration(
              color: CustomsColros.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: CustomsColros.gray)),
          child: Row(
            children: [
              Image.asset(iamgePath),
              SizedBox(width: 15.dg),
              Text(
                socialMediaName,
                style: AppTextStyles.font18GrayRegular,
              )
            ],
          ),
        ));
  }
}
