// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eshtry_meny/shared/styles/colors.dart';

import '../styles/styles.dart';

class CsutomTextFiled extends StatelessWidget {
  final prefexIcon;
  final String textOftextField;
  const CsutomTextFiled({
    super.key,
    required this.prefexIcon,
    required this.textOftextField,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefexIcon,
        hintText: textOftextField,
        hintStyle: AppTextStyles.font18GrayRegular,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 83, 58, 58), width: 1.3),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.3),
            borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: CustomsColros.gray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: CustomsColros.primaryColor, width: 1.3),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
