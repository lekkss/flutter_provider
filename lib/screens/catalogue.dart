import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/catalogue.dart';
import 'package:shop/screens/appbar.dart';
import 'package:shop/widget/item_list.dart';

class Catalogue extends StatefulWidget {
  @override
  _CatalogueState createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<CatalogueModel>(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Catlaogue',
      //     style: Theme.of(context).textTheme.headline1,
      //   ),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: null),
      //   ],
      // ),
      // body: GridView.builder(
      //   itemCount: productData.items.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
      //     value: productData.items[i],
      //     child: ItemList(
      //       index: i,
      //     ),
      //   ),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          CustomAppBar(),
          SliverToBoxAdapter(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ItemList(
                index: index,
                item: productData.items[index],
              ),
              childCount: productData.items.length,
            ),
          ),
        ],
      ),
    );
  }
}
