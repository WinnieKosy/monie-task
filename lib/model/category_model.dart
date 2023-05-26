
import '../utils/app_icons.dart';

class CategoryModel {
  final String category;
  final String assetImage;

  CategoryModel({
    required this.category,
    required this.assetImage,
  });

  static List<CategoryModel> getSampleCategories() {
    return [
      CategoryModel(
        category: "Category",
        assetImage: AppIcons.category,
      ),
      CategoryModel(
        category: "Flight",
        assetImage: AppIcons.flight,
      ),
      CategoryModel(
        category: "Bills",
        assetImage: AppIcons.bill,
      ),
      CategoryModel(
        category: "Data Plans",
        assetImage: AppIcons.globe,
      ),
      CategoryModel(
        category: "Top Up",
        assetImage: AppIcons.topUp,
      ),
    ];
  }
}
