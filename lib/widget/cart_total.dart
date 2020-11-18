import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Consumer<CartModel>(
            builder: (context, cart, child) => Text(
              '\$${cart.getTotalAmount.toStringAsFixed(2)}',
              style:
                  Theme.of(context).textTheme.headline1.copyWith(fontSize: 35),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('NOT INVOKED YET'),
                ),
              );
            },
            child: Text(
              'BUY NOW',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
