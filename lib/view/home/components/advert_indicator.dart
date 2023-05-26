import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';

class PageIndicator extends StatelessWidget {
  final int index;
  final int count;
  const PageIndicator({super.key, required this.index, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (i) => i == index
            ? Container(
                margin: const EdgeInsets.all(1),
                width: 12,
                height: 3,
                decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              )
            : Container(
                margin: const EdgeInsets.all(1),
                width: 5,
                height: 3,
                decoration: const BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
      ),
    );
  }
}
