import 'package:flutter/material.dart';
import 'package:shop/model/items.dart';

class CatalogueModel with ChangeNotifier {
  List<Items> _items = [
    Items(
        id: 'p1',
        name: 'Cookie Choco',
        price: 10,
        imgUrl: 'images/Daco_62023.png'),
    Items(
        id: 'p2',
        name: 'Chocolate Cookies',
        price: 20,
        imgUrl: 'images/Daco_1425780.png'),
    Items(
        id: 'p3',
        name: 'Cookie Cake',
        price: 15,
        imgUrl: 'images/Daco_1426667.png'),
    Items(
        id: 'p4',
        name: 'Cookie Chips',
        price: 32,
        imgUrl: 'images/Daco_4493811.png'),
  ];

  List<Items> get items => _items;
}
