import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/click_able_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      margin: EdgeInsets.all(10.w),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10.w),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            height: 80.h,
            width: 80.w,
            child: Image.asset('assets/pngimages/product1.png'),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sport Casual Shoes',
                  style: AppTextStyles.font15blackbold,
                ),
                SizedBox(height: 5.h),
                Text(
                  '\$ 40.5',
                  style: AppTextStyles.font15blackbold,
                ),
              ],
            ),
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClickAbleButton(
                  color: CustomsColros.primaryColor,
                  onTap: () {},
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
                SizedBox(width: 5.w),
                Text(
                  '1',
                  style: AppTextStyles.font25blackRegular,
                ),
                SizedBox(width: 5.w),
                ClickAbleButton(
                  color: CustomsColros.offPrimaryColor,
                  onTap: () {},
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
