import 'package:flutter/foundation.dart';
import 'item_model.dart';

class ItemController extends ChangeNotifier {
  List<ItemModel> listItems = [
    ItemModel(
      name: 'chease burger',
      price: 17,
      path: 'assets/images/burger.jpg',
    ),
    ItemModel(
      name: 'chease salada',
      price: 21,
      path: 'assets/images/salada.jpg',
    ),
    ItemModel(
      name: 'chease bacon',
      price: 21,
      path: 'assets/images/bacon.jpg',
    ),
    ItemModel(
      name: 'american burger',
      price: 25,
      path: 'assets/images/american.jpg',
    ),
    ItemModel(
      name: 'chicken house',
      price: 21,
      path: 'assets/images/chicken.jpg',
    ),
    ItemModel(
      name: 'catupiburger',
      price: 21,
      path: 'assets/images/catupi.jpg',
    ),
    ItemModel(
      name: 'green burger',
      price: 21,
      path: 'assets/images/green.jpg',
    ),
    ItemModel(
      name: 'triplex bacon',
      price: 33,
      path: 'assets/images/triplex.jpg',
    ),
    ItemModel(
      name: 'duplo cheddar',
      price: 27,
      path: 'assets/images/duplo.jpg',
    ),
    ItemModel(
      name: 'house burger',
      price: 26,
      path: 'assets/images/house.jpg',
    ),
    ItemModel(
      name: 'big house',
      price: 27,
      path: 'assets/images/big.jpg',
    ),
  ];
  List<ItemModel> drinkItems = [
    ItemModel(
      name: 'água',
      price: 3,
      path: 'assets/images/agua.jpg',
    ),
    ItemModel(
      name: 'coca lata',
      price: 5,
      path: 'assets/images/coca.jpg',
    ),
    ItemModel(
      name: 'guarana lata',
      price: 5,
      path: 'assets/images/guarana.jpg',
    ),
    ItemModel(
      name: 'fanta lata',
      price: 5,
      path: 'assets/images/fanta.jpg',
    ),
    ItemModel(
      name: 'pepsi lata',
      price: 5,
      path: 'assets/images/pepsi.jpg',
    ),
  ];
  List<ItemModel> comboItems = [
    ItemModel(
      name: 'combo house',
      price: 35,
      path: 'assets/images/combo_house.jpg',
    ),
    ItemModel(
      name: 'combo bacon',
      price: 33,
      path: 'assets/images/combo_bacon.jpg',
    ),
    ItemModel(
      name: 'combo chicken',
      price: 33,
      path: 'assets/images/combo_chicken.jpg',
    ),
    ItemModel(
      name: 'combo duplo',
      price: 38,
      path: 'assets/images/combo_duplo.jpg',
    ),
    ItemModel(
      name: 'combo salada',
      price: 33,
      path: 'assets/images/combo_salada.jpg',
    ),
  ];
}
