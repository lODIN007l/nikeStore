import 'package:flutter/material.dart';
import 'package:nike_design_app/model/shoes.dart';

class DetallePage extends StatefulWidget {
  final Deportivo deportivo;

  const DetallePage({Key? key, required this.deportivo}) : super(key: key);

  @override
  State<DetallePage> createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
