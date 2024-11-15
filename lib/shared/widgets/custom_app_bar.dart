import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget customAppBar(titleHdear, subTitle) {
  return PreferredSize(
    preferredSize: Size.fromHeight(160.h),
    child: AppBar(
      backgroundColor: CustomsColros.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      flexibleSpace: Padding(
        padding: EdgeInsets.only(
          top: 20.h,
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleHdear,
              style: AppTextStyles.font30WhiteBlod,
            ),
            SizedBox(height: 8.h),
            Text(
              subTitle,
              style: AppTextStyles.font20WhiteRegular,
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    ),
  );
}
