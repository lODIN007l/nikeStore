import 'package:flutter/material.dart';

class CustomBoton extends StatelessWidget {
  final BorderRadiusGeometry? borderR;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final VoidCallback? onTap;
  final double heigth;
  final double width;
  final Widget child;

  const CustomBoton(
      {Key? key,
      this.borderR,
      this.margin,
      this.padding,
      this.color,
      this.onTap,
      required this.heigth,
      required this.width,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.white,
      borderRadius: borderR ?? BorderRadius.circular(8),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          margin: margin,
          height: heigth,
          padding: padding,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
