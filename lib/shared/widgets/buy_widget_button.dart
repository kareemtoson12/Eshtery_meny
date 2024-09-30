import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

class BuyWidgetButton extends StatelessWidget {
  final String text;

  const BuyWidgetButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 5.h),
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: const BoxDecoration(
            color: CustomsColros.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
              child: Text(
            text,
            style: AppTextStyles.font20WhiteBlod,
          )),
        ),
        onTap: () {},
      ),
    );
  }
}
