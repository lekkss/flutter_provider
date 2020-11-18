import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/catalogue.dart';
import 'package:shop/model/items.dart';
import 'package:shop/widget/add_button.dart';

class ItemList extends StatelessWidget {
  final int index;
  final Items item;

  const ItemList({
    Key key,
    this.index,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final catalogue = Provider.of<CatalogueModel>(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            item.imgUrl,
            width: 50,
          ),
        ),
        trailing: AddButton(item: item),
        title: Text(item.name),
        subtitle: Text('\$${item.price}'),
      ),
    );
  }
}
