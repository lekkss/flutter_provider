import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart.dart';

class CartList extends StatelessWidget {
  final String id;
  final String productId;
  final String name;
  final double price;

  const CartList({Key key, this.id, this.name, this.price, this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return ListTile(
      leading: Icon(Icons.done),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
        onPressed: () {
          cart.removeItem(productId);
        },
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
