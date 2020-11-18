import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart.dart';
import 'package:shop/widget/cart_list.dart';
import 'package:shop/widget/cart_total.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cart.items.length,
              itemBuilder: (contextx, i) => CartList(
                id: cart.items.values.toList()[i].id,
                productId: cart.items.keys.toList()[i],
                name: cart.items.values.toList()[i].title,
                price: cart.items.values.toList()[i].price,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CartTotal(),
    );
  }
}
