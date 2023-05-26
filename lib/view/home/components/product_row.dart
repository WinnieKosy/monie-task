import 'package:flutter/material.dart';

import '../../../contant/app_colors.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Best Sale Product",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          Text(
            "See more",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
