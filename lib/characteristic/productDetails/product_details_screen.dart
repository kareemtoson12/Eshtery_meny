import 'package:eshtry_meny/characteristic/productDetails/widgets.dart';
import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/add_to_cart.dart';
import 'package:eshtry_meny/shared/widgets/buy_widget_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isfavorite = false; // Moved outside of build method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.offPrimaryColor,
      appBar: AppBar(
        backgroundColor: CustomsColros.offPrimaryColor,
        title: Text(
          'Product Details',
          style: AppTextStyles.font25blackRegular,
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            icon: isfavorite
                ? const Icon(Icons.favorite_border)
                : const Icon(
                    Icons.favorite,
                    color: CustomsColros.primaryColor,
                  ),
            onPressed: () {
              setState(() {
                isfavorite = !isfavorite;
              });
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.dg),
            ),
            SizedBox(
              height: 250.h,
              width: 300.w,
              child: Image.asset('assets/pngimages/product1.png'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.dg),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sport Casual Shoes',
                  style: AppTextStyles.font15blackbold,
                ),
                Text(
                  "\$ 40.50",
                  style: AppTextStyles.font15blackbold.copyWith(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: CustomsColros.yellowColor,
                ),
                Text(
                  "  3.2",
                  style: AppTextStyles.font18GrayRegular,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.dg),
            ),
            Text(
              "Select size",
              style: AppTextStyles.font15blackbold,
            ),
            const SelectSizeWidget(
              sizes: [36, 37, 38, 39, 40],
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.dg),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'description',
                  style: AppTextStyles.font15blackbold,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.dg),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Step up your game with the DynamicFit Performance Sport Shoe',
                    style: AppTextStyles.font13WhiteRegular,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.dg),
            ),
            const Row(
              children: [
                AddToCart(
                  icon: 'assets/pngimages/addtocart.png',
                ),
                BuyWidgetButton(text: 'Buy now'),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
