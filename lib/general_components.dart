import 'package:flutter/material.dart';
import 'package:p3l_k3_mobile/constants.dart';

class LogoAtmaKitchen extends StatelessWidget {
  const LogoAtmaKitchen({required this.type, required this.height, super.key});
  final LogoType type;
  final double height;

  @override
  Widget build(BuildContext context) {
    final String name = (type == LogoType.color)
        ? 'assets/logo/color.png'
        : type == LogoType.black
            ? 'assets/logo/black.png'
            : 'assets/logo/white.png';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          name,
          height: height,
          width: height,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Atma Kitchen',
              style: TextStyle(fontSize: 16 * (height / 60), fontWeight: FontWeight.bold),
            ),
            Text(
              'Since 2024 - Cake & Drinks',
              style: TextStyle(fontSize: 12 * (height / 60), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
