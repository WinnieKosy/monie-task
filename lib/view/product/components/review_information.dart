import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/view/product/components/ratings.dart';

class ReviewInformation extends StatelessWidget {
  final Product product;
  const ReviewInformation({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const Text(
          "Review and Ratings",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(width: 10,),
            Column(
              children: [
                Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: '4.9',
                        style: TextStyle(color: AppColors.black,fontSize: 35,fontWeight: FontWeight.bold),
                        children: [
                          WidgetSpan(
                            baseline: TextBaseline.alphabetic,
                            alignment: PlaceholderAlignment.bottom,
                            child: SizedBox(
                              width: 20,
                              child: Text(
                                '/ 1.1',
                                style: TextStyle(color: AppColors.black,fontSize: 11,fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
                //list view of star icons just 5
                const SizedBox(height: 5,),
                RatingStars(rating: 4.5, starSize: 25),
                const SizedBox(height: 25,),
                const Text("2.3k+ Reviews",style: TextStyle(color: AppColors.grey,fontSize: 12,fontWeight: FontWeight.normal),),
              ],
            ),
            const SizedBox(width: 13,),
            SizedBox(
              width: 200,
              child: RatingProgress(rating: 4.5, starSize: 30),
            )
          ],
        ),
      ],
    );
  }
}
