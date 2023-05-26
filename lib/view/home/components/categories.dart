import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/contant/app_colors.dart';
import 'package:ui/model/category_model.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white.withOpacity(0.5),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final categoryModel in CategoryModel.getSampleCategories())
                _buildServiceItem(categoryModel),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDot(),
              const SizedBox(width: 2),
              _buildDot(),
              const SizedBox(width: 2),
              _buildDot(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(CategoryModel categoryModel) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.categoryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(
            categoryModel.assetImage,
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          categoryModel.category,
          style: const TextStyle(
            fontSize: 10,
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: 5,
      height: 3,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
