import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';

import '../../../utils/size_config.dart';


class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    required this.icons,
    this.color = AppColors.grey,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final IconData icons;
  final Color color;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            child: Icon(icons, color: color)
          ),
          if (numOfitem != 0)
            Positioned(
              top: 7,
              right: 3,
              child: Container(
                height: getProportionateScreenWidth(18),
                width: getProportionateScreenWidth(20),
                decoration: BoxDecoration(
                  color: AppColors.shadeOfRed,
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1.5, color: AppColors.shadeOfRed),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
