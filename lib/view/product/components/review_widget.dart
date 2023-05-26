import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/product_model.dart';

class ReviewWidget extends StatelessWidget {
  final Review review;
  const ReviewWidget({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=7'),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    review.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    review.ratings.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 2),
                  const Text(
                    '...',
                    style: TextStyle(fontSize: 16,color: AppColors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: review.niceDescriptions
                .map(
                  (description) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                    border: Border.fromBorderSide(BorderSide(
                        color:
                        AppColors.primary.withOpacity(0.5),
                        width: 1.0))
                ),
                child: Text(description,style: const TextStyle(color: AppColors.primary,fontSize: 13,fontWeight: FontWeight.w800),),
              ),
            )
                .toList(),
          ),
          const SizedBox(height: 10),
          Text(
            review.text,
            style: const TextStyle(color: AppColors.black,fontSize: 12,fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.thumb_up, color: AppColors.primary,size: 17,),
              const SizedBox(width: 8),
              const Text(
                'Helpful?',
                style: TextStyle(color: AppColors.primary,fontSize: 14,fontWeight: FontWeight.normal),
              ),
              const Spacer(),
              Text(
                review.timePosted,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
