import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui/contant/app_colors.dart';

import '../../../utils/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: const BorderSide(width: 0.3)
    );
    return Container(
      width: SizeConfig.screenWidth! * 0.6,
      decoration: BoxDecoration(
        color: AppColors.greyLight.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        enabled: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(width: 0.5)
            ),
            focusedBorder: border,
            enabledBorder: border,
            hintText: "Search....",
            prefixIcon: const Icon(Iconsax.search_normal)
        ),
      ),
    );
  }
}
