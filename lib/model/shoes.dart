import 'package:flutter/material.dart';

class ImagenDeportivo {
  final String image;
  final Color color;

  ImagenDeportivo(this.image, this.color);
}

class Deportivo {
  final String nombre;
  final String categoria;
  final String precio;
  final int puntuacion;
  final List<ImagenDeportivo> listaI;

  Deportivo(
      this.nombre, this.categoria, this.precio, this.puntuacion, this.listaI);
}
