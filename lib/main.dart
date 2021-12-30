import 'package:flutter/material.dart';
import 'package:nike_design_app/views/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tienda Nike',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: HomeShop());
  }
}
