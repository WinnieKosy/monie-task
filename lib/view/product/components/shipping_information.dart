import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

class ShippingInformation extends StatelessWidget {
  final Product product;
  const ShippingInformation({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const Text(
          "Shipping Information:",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black),
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Row(
              children: [
                const Text("Delivery: ",style: TextStyle(color: AppColors.grey,fontSize: 13),),
                const SizedBox(width: 20,),
                Text(product.delivery,style: const TextStyle(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text("Shopping: ",style: TextStyle(color: AppColors.grey,fontSize: 13),),
                const SizedBox(width: 20,),
                Text(product.shipping,style: const TextStyle(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Text("Arrival: ",style: TextStyle(color: AppColors.grey,fontSize: 13),),
                const SizedBox(width: 20,),
                Text(product.arrival,style: const TextStyle(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ],
    );
  }
}
