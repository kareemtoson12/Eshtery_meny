// styles.dart

import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Text Styles
class AppTextStyles {
  static TextStyle font30WhiteBlod = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle font20WhiteBlod = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle font20WhiteRegular = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );
  static TextStyle font18GrayRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: CustomsColros.gray,
  );
  static TextStyle font20PurpuleRegular = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: CustomsColros.primaryColor,
  );
  static TextStyle font20blackRegular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}
