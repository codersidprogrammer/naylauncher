import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../mixins/xcolors.mixin.dart';
import '../mixins/xfontsize.mixin.dart';
import '../raw/xfontsize.dart';
class TypographyBuilder with
    XColorMixin<TypographyBuilder>,
    XFontSizeMixin<TypographyBuilder>
{

  FontWeight _fontWeight = FontWeight.normal;

  TypographyBuilder() {
    setChildColoring(this);
    setChildFontSizing(this);
  }

  TypographyBuilder setFontWeight(FontWeight _fw) {
    this._fontWeight = _fw;
    return this;
  }

  TextStyle build() {
    // TODO: Change this font type as you need
    return GoogleFonts.inter(
      fontSize: textSize ?? XFontSize.base,
      color: textColor ?? Colors.grey,
      letterSpacing: -0.5,
      fontWeight: FontWeight.normal,
    );
  }
}
