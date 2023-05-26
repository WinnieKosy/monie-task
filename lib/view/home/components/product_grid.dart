import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/utils/device_ratio.dart';
import 'package:ui/view/home/components/Product.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.deviceAspectRatio > 0.6 ? 3 : 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 20,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) => ProductWidget(
        product: products[index],
      ),
    );
  }
}