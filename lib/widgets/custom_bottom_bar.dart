import 'package:flutter/material.dart';

class BotonPersonalizado extends StatelessWidget {
  final Color color;

  const BotonPersonalizado({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.house)),
            Container(
              height: double.infinity,
              width: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Center(
                child: Container(
                  height: 25,
                  width: 25,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                  child: Center(
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: color),
                          child: Center(
                              child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.person_outline_outlined))
          ],
        ),
      ),
    );
  }
}
