import 'package:flutter/foundation.dart';
import 'item_model.dart';

class CartController extends ChangeNotifier {
  List<ItemModel> listCart = [];

  int get totalPrice => listCart.fold(0, (total, item) => total + item.price);

  addCart(ItemModel model) {
    listCart.add(model);
    notifyListeners();
  }

  removeCart(ItemModel model) {
    listCart.removeWhere((item) => item.name == model.name);
    notifyListeners();
  }
}
