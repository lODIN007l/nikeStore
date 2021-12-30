import 'package:flutter/material.dart';
import 'package:nike_design_app/model/shoes.dart';

final listaC = ['Basketball', 'Correr', 'Entrenar'];

final listZ = [
  Deportivo('AIR JORDAN 1 MID SE GC ', 'NIKE AIR ', '\$ 120', 4, [
    ImagenDeportivo('assets/J_001.png', const Color(0xffEAA906)),
    ImagenDeportivo('assets/J_002.png', const Color(0xff08B894)),
    ImagenDeportivo('assets/J_003.png', const Color(0xffB50D0D)),
    ImagenDeportivo('assets/J_004.png', const Color(0xff229954)),
  ]),
  Deportivo('NIKE BLAZER MID  ', 'NIKE AIR ', '\$ 150', 3, [
    ImagenDeportivo('assets/Z_001.png', const Color(0xff08B894)),
    ImagenDeportivo('assets/Z_002.png', const Color(0xffE90311)),
    ImagenDeportivo('assets/Z_003.png', const Color(0xff189E03)),
    ImagenDeportivo('assets/Z_004.png', const Color(0xffF76A02)),
  ]),
  Deportivo('ZoomX Vaporfly', 'NIKE ZOOM', '\$ 180', 3, [
    ImagenDeportivo('assets/N_001.png', const Color(0xff7B7A41)),
    ImagenDeportivo('assets/N_002.png', const Color(0xff2C2C46)),
    ImagenDeportivo('assets/N_003.png', const Color(0xff262626)),
    ImagenDeportivo('assets/N_004.png', const Color(0xff5C9462)),
  ])
];
