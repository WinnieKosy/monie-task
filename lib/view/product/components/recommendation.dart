import 'package:flutter/material.dart';
import 'package:ui/utils/device_ratio.dart';
import 'package:ui/view/home/components/Product.dart';

import '../../../contant/app_colors.dart';
import '../../../model/product_model.dart';
import '../../../utils/size_config.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(1)),
        child: Column(
          children: [
            Row(
              children: const [
                Text("Recommendation",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("See More",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: AppColors.primary),),
              ],
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.deviceAspectRatio > 0.6 ? 3 : 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 17,
                  mainAxisSpacing: 17,
                ),
                shrinkWrap: true,
                itemCount: products.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, i) {
                  final product = products[i];
                  return ProductWidget(
                    product: product,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
