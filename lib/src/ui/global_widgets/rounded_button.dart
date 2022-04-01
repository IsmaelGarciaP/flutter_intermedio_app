import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts_styles.dart';



class RoundedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  final Color textColor, backgroundColor, borderColor;
  final bool fullWidth;
  final EdgeInsets padding;

  const RoundedButton({
    Key? key,
    this.onPressed,
    this.label,
    this.textColor = Colors.white,
    this.backgroundColor = primaryColor,
    this.borderColor = primaryColor,
    this.fullWidth = true, this.padding = const EdgeInsets.symmetric(vertical: 9, horizontal: 30),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Container(
        width: fullWidth?double.infinity:null,
        padding: padding,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1.4, color: borderColor)),
        child: Text(
          label!,
          textAlign: TextAlign.center,
          style: FontSyles.normal.copyWith(
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
      minSize: 30,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
    );
  }
}
