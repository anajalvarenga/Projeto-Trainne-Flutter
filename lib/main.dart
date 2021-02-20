import 'package:flutter/material.dart';
import 'package:menu/item_controller.dart';
import 'package:menu/tab_page.dart';
import 'package:provider/provider.dart';

import 'cart_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemController>.value(
          value: ItemController(),
        ),
        ChangeNotifierProvider<CartController>.value(
          value: CartController(),
        ),
      ],
      child: MaterialApp(
        title: 'Menu',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TabPage(),
      ),
    );
  }
}
