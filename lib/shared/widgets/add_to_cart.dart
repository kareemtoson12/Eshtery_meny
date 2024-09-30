import 'package:eshtry_meny/shared/styles/colors.dart';

import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final String icon;
  const AddToCart({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
            decoration: BoxDecoration(
              color: CustomsColros.offPrimaryColor,
              border: Border.all(color: CustomsColros.darkgray),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: IconButton(onPressed: () {}, icon: Image.asset(icon)),
            )),
        onTap: () {},
      ),
    );
  }
}
