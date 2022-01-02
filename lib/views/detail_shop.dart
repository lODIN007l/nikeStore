import 'package:flutter/cupertino.dart';
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
  int valorindexColor = 0;
  int valorindeSize = 0;

  double deportivoSize(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.09);
      case 1:
        return (size.height * 0.07);
      case 2:
        return (size.height * 0.05);
      case 3:
        return (size.height * 0.04);
      default:
        return (size.height * 0.05);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 250),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, _) {
                  return AnimatedContainer(
                    height: value * (size.height * 0.5),
                    width: value * (size.height * 0.5),
                    duration: const Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                        color: widget.deportivo.listaI[valorindexColor].color,
                        shape: BoxShape.circle),
                  );
                }),
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
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: size.height * 0.22,
            right: deportivoSize(valorindeSize, size),
            left: deportivoSize(valorindeSize, size),
            child: Hero(
              tag: widget.deportivo.nombre,
              child: Image(
                image:
                    AssetImage(widget.deportivo.listaI[valorindexColor].image),
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
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.deportivo.nombre,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: widget.deportivo.puntuacion > index
                              ? widget.deportivo.listaI[valorindexColor].color
                              : Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'SIZE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: CustomBoton(
                            onTap: () {
                              valorindeSize = index;
                              setState(() {});
                            },
                            color: index == valorindeSize
                                ? widget.deportivo.listaI[valorindexColor].color
                                : Colors.white,
                            heigth: size.height * 0.06,
                            width: size.height * 0.06,
                            child: Text(
                              '${index + 7}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: index == valorindeSize
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.85,
            left: size.height * 0.015,
            right: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'COLOR',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: List.generate(
                        widget.deportivo.listaI.length,
                        (index) => GestureDetector(
                          onTap: () {
                            valorindexColor = index;
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: widget.deportivo.listaI[index].color,
                                shape: BoxShape.circle,
                                border: index == valorindexColor
                                    ? Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                CustomBoton(
                    heigth: 60,
                    width: 110,
                    color: widget.deportivo.listaI[valorindexColor].color,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.storefront_rounded,
                          size: 45,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'BUY',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
