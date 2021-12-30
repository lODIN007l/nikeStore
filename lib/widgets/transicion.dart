import 'package:flutter/material.dart';

class TransicionShake extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;
  final bool left;

  const TransicionShake(
      {Key? key,
      this.duration = const Duration(milliseconds: 700),
      this.offset = 140.0,
      this.axis = Axis.horizontal,
      this.left = true,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween(begin: 1.0, end: 0.0),
        duration: duration,
        builder: (BuildContext context, double valor, Widget? child) {
          return Transform.translate(
            offset: left
                ? Offset(-valor * offset, valor * offset)
                : Offset(valor * offset, -valor * offset),
            child: child,
          );
        });
  }
}
