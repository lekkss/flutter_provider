import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Catlaogue',
        style: Theme.of(context).textTheme.headline1,
      ),
      floating: true,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            }),
      ],
    );
  }
}
