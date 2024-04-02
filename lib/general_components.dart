import 'package:flutter/material.dart';
import 'package:p3l_k3_mobile/constants.dart';

class LogoAtmaKitchen extends StatelessWidget {
  const LogoAtmaKitchen({required this.type, required this.showBrand, required this.height, super.key});
  final LogoType type;
  final bool showBrand;
  final double height;

  @override
  Widget build(BuildContext context) {
    final String name = (type == LogoType.color)
        ? 'assets/logo/color.png'
        : type == LogoType.black
            ? 'assets/logo/black.png'
            : 'assets/logo/white.png';
    final Color textColor = type == LogoType.color || type == LogoType.black ? Colors.black : Colors.white;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          name,
          height: height,
          width: height,
        ),
        if (showBrand)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Atma Kitchen',
                style: TextStyle(fontSize: 16 * (height / 60), fontWeight: FontWeight.bold, color: textColor),
              ),
              Text(
                'Since 2024 - Cake & Drinks',
                style: TextStyle(fontSize: 12 * (height / 60), fontWeight: FontWeight.bold, color: textColor),
              ),
            ],
          )
        else
          const SizedBox(),
      ],
    );
  }
}
