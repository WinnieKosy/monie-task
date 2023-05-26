import 'package:flutter/cupertino.dart';

import '../model/product_model.dart';

class ProductViewModel extends ChangeNotifier {
  late Product _product;
  bool _selected = false;

  Product get product => _product;
  bool get selected => _selected;

  void selectProduct() {
    _selected = true;
    notifyListeners();
  }

  void unselectProduct() {
    _selected = false;
    notifyListeners();
  }

  void setProduct(Product product) {
    _product = product;
  }
}
