import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double size;
  final Color backgroundColor, iconColor;
  final String iconPath;

  const CircleButton({
    Key? key,
    required this.onPressed,
    required this.iconPath,
    this.size = 40,
    this.backgroundColor = primaryColor,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        child: Container(
          width: size,
          height: size,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            iconPath,
            color: iconColor,
          ),
        ),
        onPressed: onPressed);
  }
}
