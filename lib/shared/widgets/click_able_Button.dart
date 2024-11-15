import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickAbleButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap; // Use VoidCallback for onTap instead of Function
  final Color color;

  const ClickAbleButton({
    super.key,
    required this.icon,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      color: color,
      child: Center(
        child: IconButton(
          icon: icon,
          iconSize: 18.dg,
          onPressed: onTap,
        ),
      ),
    );
  }
}
