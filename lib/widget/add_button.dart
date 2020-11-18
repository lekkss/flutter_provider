import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart.dart';
import 'package:shop/model/items.dart';

class AddButton extends StatelessWidget {
  final Items item;

  const AddButton({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    bool hasItem = (cart.items.containsKey(item.id));
    return hasItem
        ? Text("Added")
        : GestureDetector(
            child: Icon(Icons.check),
            onTap: () {
              cart.addItem(item.id, item.name, item.price);
            },
          );
  }
}
