import 'package:flutter/material.dart';
import 'package:ui/model/product_model.dart';
import 'package:ui/utils/device_ratio.dart';

import '../../../contant/app_colors.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImageState createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  late List<String> _images;
  late int _selectedImageIndex;

  @override
  void initState() {
    super.initState();
    _images = widget.product.itemPictures;
    _selectedImageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final deviceAspectRatio = context.deviceAspectRatio;

    return Container(
      height: 350,
      width: deviceAspectRatio > 0.6
          ? MediaQuery.of(context).size.width * 0.7
          : MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.categoryColor.withOpacity(0.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _images.asMap().entries.map((entry) {
                final index = entry.key;
                final imageUrl = entry.value;
                final isActive = index == _selectedImageIndex;
                final borderColor = isActive
                    ? AppColors.primary
                    : AppColors.categoryColor;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedImageIndex = index;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: isActive ? 2 : 0,
                          color: borderColor,
                        ),
                        color: AppColors.categoryColor,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.network(
                _images[_selectedImageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 35,),
        ],
      ),
    );
  }
}
