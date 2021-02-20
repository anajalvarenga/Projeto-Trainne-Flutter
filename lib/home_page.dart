import 'package:flutter/material.dart';
import 'package:menu/item_controller.dart';
import 'package:provider/provider.dart';
import 'cart_controller.dart';
import 'item_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _buildList() {
    ItemController itemController = Provider.of<ItemController>(context);

    return ListView.builder(
      itemCount: itemController.listItems.length,
      itemBuilder: (context, index) {
        return _buildItems(itemController.listItems[index]);
      },
    );
  }

  _buildItems(ItemModel model) {
    CartController cartController = Provider.of<CartController>(context);

    return ListTile(
      title: Text(model.name),
      subtitle: Text(model.price.toStringAsFixed(2)),
      leading: Image.asset(model.path),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          cartController.addCart(model);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemController>(
      builder: (context, itemController, widget) {
        return _buildList();
      },
    );
  }
}
