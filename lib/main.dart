import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart.dart';
import 'package:shop/model/catalogue.dart';
import 'package:shop/screens/cart.dart';
import 'package:shop/screens/catalogue.dart';
import 'package:shop/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CatalogueModel(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CartModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: TextTheme(
              headline1: TextStyle(
                fontFamily: 'Corben',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Colors.black,
              ),
            )),
        initialRoute: '/',
        routes: {
          '/': (context) => Login(),
          '/catalogue': (context) => Catalogue(),
          '/cart': (context) => Cart()
        },
      ),
    );
  }
}
