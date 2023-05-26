import 'package:flutter/material.dart';
import 'package:ui/contant/app_colors.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double starSize;

  RatingStars({super.key, this.rating = 0, this.starSize = 20});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(
            Icons.star,
            size: starSize,
            color: AppColors.reviewStar,
          );
        } else if (index == rating.floor() && rating % 1 != 0) {
          return Icon(
            Icons.star_half,
            size: starSize,
            color: AppColors.reviewStar,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: starSize,
            color: AppColors.reviewStar,
          );
        }
      }),
    );
  }
}

class RatingProgress extends StatelessWidget {
  final double rating;
  final double starSize;

  RatingProgress({super.key, this.rating = 0, this.starSize = 20});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        double ratingValue = index + 1.0;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.star,
                size: 20,
                color: AppColors.reviewStar,
              ),
              Text(
                '$ratingValue',
                style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    minHeight: 10,
                    value: rating >= ratingValue ? 0.7 : rating % 1,
                    backgroundColor: AppColors.inActiveIconColor,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(AppColors.primary),
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                '${ratingValue.toInt()}',
                style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        );
      }),
    );
  }
}
