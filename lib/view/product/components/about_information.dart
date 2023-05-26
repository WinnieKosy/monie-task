import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

class AboutInfoWidget extends StatelessWidget {
  final Product product;
  const AboutInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("Brand:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  width: 5,
                ),
                Text(product.brand,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const Text("Category:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  width: 8,
                ),
                Text(product.category,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const Text("Condition:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  width: 8,
                ),
                Text(product.condition,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        // 2nd Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("Color:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  width: 16,
                ),
                Text(product.color,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Material:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.normal)),
                const SizedBox(
                  width: 16,
                ),
                Text(product.material,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                const Text("Heavy:",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  width: 16,
                ),
                Text(product.heavy,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
