import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget nextButton(text) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      margin: EdgeInsets.symmetric(horizontal: 110.w),
      decoration: const BoxDecoration(
          color: CustomsColros.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Center(
          child: Text(
        text,
        style: AppTextStyles.font20WhiteBlod,
      )),
    ),
    onTap: () {},
  );
}
