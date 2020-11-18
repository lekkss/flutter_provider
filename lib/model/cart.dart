import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
  });
}

class CartModel with ChangeNotifier {
  //CatalogueModel _catalogue;
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  void addItem(
    String productId,
    String title,
    double price,
  ) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(id: productId, title: title, price: price),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  double get getTotalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price;
    });
    return total;
  }
}
