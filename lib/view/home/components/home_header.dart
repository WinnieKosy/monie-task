import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/view/home/components/search_field.dart';

import 'icon_btn.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: SearchField(),
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                IconBtn(
                  icons: Iconsax.shopping_cart,
                  numOfitem: 3,
                  color: AppColors.black,
                  press: (){},
                ),
                IconBtn(
                  icons: Iconsax.message,
                  color: AppColors.black,
                  numOfitem: 3,
                  press: () {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
