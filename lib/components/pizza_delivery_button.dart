import 'dart:ui';

import 'package:flutter/material.dart';

class PizzaDeliveryButton extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final String label;
  final TextStyle textStyle;
  final Color labelColor;
  final double labelSize;
  final Function onPressed;

  const PizzaDeliveryButton({
    Key key,
    this.width,
    this.height,
    this.buttonColor,
    this.label = 'OK',
    this.textStyle,
    this.labelColor,
    this.labelSize, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height,
      width: this.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: this.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: this.onPressed,
        child: Text(
          this.label,
          style: textStyle ??
              TextStyle(fontSize: this.labelSize, color: labelColor),
        ),
      ),
    );
  }
}
