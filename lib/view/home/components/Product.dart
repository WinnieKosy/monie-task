import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

import '../../../utils/app_icons.dart';
import '../../../utils/helper.dart';
import '../../product/product_details.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ProductDetailsScreen(
                  product: product,
                ))));
      },
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 8),
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      product.itemPictures[0],
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: SvgPicture.asset(
                    product.isFavorite
                        ? AppIcons.heartFilled
                        : AppIcons.heartOutlined,
                    width: 24,
                    color: product.isFavorite
                        ? AppColors.shadeOfRed
                        : AppColors.black,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    product.category,
                    style: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    product.itemName,
                    maxLines: 2,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: AppColors.reviewStar,
                          ),
                          Text(
                            "${product.itemRating} | ${product.itemViews.toString()}",
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        currencyFormat(product.itemPrice.toString()),
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}