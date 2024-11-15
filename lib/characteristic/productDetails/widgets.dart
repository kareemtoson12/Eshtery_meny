import 'package:eshtry_meny/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSizeWidget extends StatefulWidget {
  final List<int> sizes; // List of available sizes
  const SelectSizeWidget({super.key, required this.sizes});

  @override
  State<SelectSizeWidget> createState() => _SelectSizeWidgetState();
}

class _SelectSizeWidgetState extends State<SelectSizeWidget> {
  int? selectedSize; // Tracks the currently selected size

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.sizes.map((size) {
        bool isChosen = selectedSize == size;
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedSize = size; // Update selected size
              });
            },
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: isChosen ? CustomsColros.primaryColor : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: CustomsColros.primaryColor),
              ),
              child: Center(
                child: Text(
                  '$size',
                  style: TextStyle(
                    color: isChosen ? Colors.white : CustomsColros.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
