import 'package:eshtry_meny/characteristic/cart/widgets/item_card.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.offPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomsColros.offPrimaryColor,
        title: Text(
          'Cart',
          style: AppTextStyles.font25blackRegular,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, Routes.productDetailsScreen);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 7.dg),
            ),
            const ItemCard(),
            const ItemCard(),
            const ItemCard(),
            const ItemCard(),
          ],
        ),
      ),
    );
  }
}
