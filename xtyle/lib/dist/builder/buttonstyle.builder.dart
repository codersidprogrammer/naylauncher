import 'package:flutter/material.dart';
import 'package:xtyle/main.dart';

class ButtonStyleBuilder with XColorMixin<ButtonStyleBuilder> {
  ButtonStyleBuilder() {
    setChildColoring(this);
  }

  ButtonStyle build() {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(bgColor),
      iconColor: WidgetStateProperty.all(iconColor),
    );
  }
}