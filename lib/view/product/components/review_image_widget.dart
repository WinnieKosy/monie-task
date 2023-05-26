import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

import '../../home/components/sliver_fix.dart';

class ReviewImageInformation extends StatelessWidget {
  final Product product;
  const ReviewImageInformation({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = product.itemPictures.take(4).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const Text(
          "Reviews with images & videos",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                  crossAxisCount: 4, height: 70, crossAxisSpacing: 16.0),
              itemCount: images.length,
              itemBuilder: ((context, index) => index != images.length - 1
                  ? Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.categoryColor,
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  : Stack(
                children: [
                  Container(
                    // width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.categoryColor,
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text("132+",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          )),
                    ),
                  )
                ],
              )),
            ))
      ],
    );
  }
}
