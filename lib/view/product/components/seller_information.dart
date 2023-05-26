import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

class SellerInformation extends StatelessWidget {
  final Product product;
  const SellerInformation({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        const Text(
          "Seller Information:",
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
            const CircleAvatar(
              radius: 32,
              backgroundColor: AppColors.categoryColor,
              backgroundImage:
              AssetImage("assets/images/store_image.png"),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.sellerName,style: const TextStyle(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                  Row(
                    children: const [
                      Text("Active 5mins ago",style: TextStyle(color: AppColors.grey,fontSize: 12,fontWeight: FontWeight.normal),),
                      Text("|",style: TextStyle(color: AppColors.grey,fontSize: 12,fontWeight: FontWeight.normal)),
                      Text("90% FeedBack",style: TextStyle(color: AppColors.grey,fontSize: 12,fontWeight: FontWeight.normal),),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  //button to view seller profile
                  Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.primary.withOpacity(0.05),
                          border: Border.all(
                              color: AppColors.primary
                          )
                      ),
                      child:Row(
                        children: const [
                          //icon and text
                          SizedBox(width: 5,),
                          Icon(Icons.store,color: AppColors.primary,size: 20,),
                          SizedBox(width: 5,),
                          Text("Visit Store",style: TextStyle(color: AppColors.primary,fontSize: 12),),
                        ],
                      )
                  )
                ],
              )
            )
          ],
        )
      ],
    );
  }
}
