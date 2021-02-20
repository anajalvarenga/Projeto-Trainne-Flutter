import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_controller.dart';
import 'item_model.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  _buildList() {
    CartController cartController = Provider.of<CartController>(context);

    return ListView.builder(
      itemCount: cartController.listCart.length,
      itemBuilder: (context, index) {
        return _buildItems(cartController.listCart[index]);
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
        icon: Icon(Icons.highlight_remove),
        onPressed: () {
          cartController.removeCart(model);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Consumer<CartController>(
            builder: (context, cartController, widget) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Total: ${cartController.totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Consumer<CartController>(
        builder: (context, cartController, widget) {
          return _buildList();
        },
      ),
    );
  }
}
