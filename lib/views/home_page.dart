import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nike_design_app/model/data.dart';
import 'package:nike_design_app/widgets/custom_appbar.dart';
import 'package:nike_design_app/widgets/custom_bottom_bar.dart';

class HomeShop extends StatefulWidget {
  @override
  State<HomeShop> createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomBar(),
          SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: List.generate(
                      listaC.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              listaC[index],
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          )),
                ),
              )),
          Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: listZ.length,
                  itemBuilder: (context, index) {
                    final deportivo = listZ[index];
                    final listTitle = deportivo.categoria.split(' ');
                    return Padding(
                      padding: const EdgeInsets.only(right: 60, left: 50),
                      child: Transform.translate(
                        offset: Offset(10, 0),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 40),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          deportivo.categoria,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          deportivo.nombre,
                                          style: const TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          deportivo.precio,
                                          style: const TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        FittedBox(
                                          child: Text(
                                            '${listTitle[0]} \n ${listTitle[1]}    ',
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: constraints.maxHeight * 0.2,
                                      left: constraints.maxWidth * 0.01,
                                      right: -constraints.maxWidth * 0 - 16,
                                      bottom: constraints.maxHeight * 0.2,
                                      child: Image(
                                          image: AssetImage(
                                              deportivo.listaI[0].image))),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Material(
                                        color: deportivo.listaI[0].color,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36),
                                            bottomRight: Radius.circular(30)),
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: InkWell(
                                          onTap: () {},
                                          child: SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Icon(
                                              Icons.add,
                                              size: 40,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ));
                        }),
                      ),
                    );
                  })),
          Container(
            height: 120,
            padding: const EdgeInsets.all(20),
            child: BotonPersonalizado(color: listZ[0].listaI[0].color),
          )
        ],
      ),
    );
  }
}
