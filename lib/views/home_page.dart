import 'package:flutter/material.dart';
import 'package:nike_design_app/model/data.dart';
import 'package:nike_design_app/widgets/custom_appbar.dart';

class HomeShop extends StatelessWidget {
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
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Text(
                        deportivo.categoria,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
