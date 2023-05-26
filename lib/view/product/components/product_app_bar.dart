import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/view/home/components/icon_btn.dart';

import '../../../utils/size_config.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtn(
            icons: Iconsax.arrow_left,
            numOfitem: 0,
            color: AppColors.black,
            press: () {},
          ),
          const Spacer(),
          //favorite
          IconBtn(
            icons: Icons.favorite,
            numOfitem: 0,
            color: AppColors.red,
            press: () {},
          ),
          IconBtn(
            icons: Icons.share,
            color: AppColors.black,
            numOfitem: 0,
            press: () {},
          ),
          IconBtn(
            icons: Iconsax.shopping_cart,
            color: AppColors.black,
            numOfitem: 3,
            press: (){},
          ),
        ],
      ),
    );
  }
}
