import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/view/product/components/about_information.dart';
import 'package:ui/view/product/components/description_widget.dart';
import 'package:ui/view/product/components/recommendation.dart';
import 'package:ui/view/product/components/review_image_widget.dart';
import 'package:ui/view/product/components/review_information.dart';
import 'package:ui/view/product/components/seller_information.dart';
import 'package:ui/view/product/components/shipping_information.dart';
import 'package:ui/view/product/components/top_reviews.dart';

class AboutTab extends StatelessWidget {
  final Product product;
  const AboutTab({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutInfoWidget(product: product),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            DescriptionWidget(product: product),
            const SizedBox(
              height: 24,
            ),
            ShippingInformation(product: product),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: AppColors.categoryColor,
              thickness: 1,
            ),
            SellerInformation(product: product),
            const SizedBox(
              height: 24,
            ),
            ReviewInformation(product: product),
            const SizedBox(
              height: 24,
            ),
            ReviewImageInformation(product: product),
            const Divider(
              color: AppColors.categoryColor,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            TopReviews(product: product),
            const SizedBox(
              height: 10 * 2,
            ),
            const RecommendationWidget(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
