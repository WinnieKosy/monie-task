import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

class DescriptionWidget extends StatelessWidget {
  final Product product;
  const DescriptionWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description:",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
        ),
        Html(
          data: product.description,
          style: {
            "p": Style(
              fontSize: const FontSize(14.0),
              color: AppColors.grey,
              fontFamily: "poppins",
            ),
            "li": Style(
              fontSize: const FontSize(14.0),
              color: AppColors.grey,
              fontFamily: "poppins",
            ),
          },
        ),
      ],
    );
  }
}
