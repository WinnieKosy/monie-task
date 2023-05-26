import 'package:flutter/cupertino.dart';

class AdvertModel {
  final String textTag;
  final String title;
  final String? description;
  final String image;
  final Color color;
  final double fontSize;

  AdvertModel({
    required this.textTag,
    required this.title,
    this.description,
    required this.image,
    required this.color,
    required this.fontSize,
  });

  static List<AdvertModel> getSampleAdvert() {
    return [
      AdvertModel(
        textTag: "#OFI AGBADA",
        title: "50% OFF",
        description: "Discover fashion that suits to your style",
        image: "assets/images/image_five.png",
        color: const Color(0xFFe8ebea),
        fontSize: 20,
      ),
      AdvertModel(
        textTag: "#SUMMERSALE",
        title: "60% OFF",
        description: "Summer styles that fit your budget",
        image: "assets/images/image_one.png",
        color: const Color(0xFFf6e0b6),
        fontSize: 20,
      ),
      AdvertModel(
        textTag: "#BAGSONSALE",
        title: "50% OFF",
        description: "Get the latest fashion trends",
        image: "assets/images/image_two.png",
        color: const Color(0xFFd7e4f3),
        fontSize: 20,
      ),
      AdvertModel(
        textTag: "#ADIDAS",
        title: "20% OFF",
        description: "Back to school essentials",
        image: "assets/images/image_six.png",
        color: const Color(0xFFf4dfde),
        fontSize: 20,
      ),
      AdvertModel(
        textTag: "#AGBADA",
        title: "70% OFF",
        description: "Limited time only",
        image: "assets/images/image_seven.png",
        color: const Color(0xFFe4e1f2),
        fontSize: 20,
      ),
    ];
  }
}
