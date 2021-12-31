import 'package:flutter/material.dart';
import 'package:nike_design_app/model/shoes.dart';
import 'package:nike_design_app/widgets/custom_buttom.dart';

class DetallePage extends StatefulWidget {
  final Deportivo deportivo;

  const DetallePage({Key? key, required this.deportivo}) : super(key: key);

  @override
  State<DetallePage> createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: AnimatedContainer(
              height: size.height * 0.5,
              width: size.height * 0.5,
              duration: const Duration(milliseconds: 400),
              decoration: BoxDecoration(
                  color: widget.deportivo.listaI[0].color,
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBoton(
                  onTap: () => Navigator.pop(context),
                  width: 60,
                  heigth: 60,
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.20,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FittedBox(
                child: Text(
                  widget.deportivo.categoria,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.22,
            right: size.height * 0.07,
            left: size.height * 0.07,
            child: Hero(
              tag: widget.deportivo.nombre,
              child: Image(
                image: AssetImage(widget.deportivo.listaI[0].image),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            left: 16,
            right: 16,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.deportivo.categoria,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.deportivo.nombre,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 30),
                        ),
                      ],
                    ),
                    Text(
                      widget.deportivo.precio,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
