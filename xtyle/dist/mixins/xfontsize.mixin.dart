import '../raw/xfontsize.dart';

mixin XFontSizeMixin<T> {
  late T _child;

  double? textSize;

  setChildFontSizing(T child) {
    _child = child;
  }

  T get textBase {
    textSize = XFontSize.base;
    return _child;
  }

  T get textXs {
    textSize = XFontSize.textxs;
    return _child;
  }

  T get textSm {
    textSize = XFontSize.textsm;
    return _child;
  }

  T get textLg {
    textSize = XFontSize.textlg;
    return _child;
  }

  T get textXl {
    textSize = XFontSize.textxl;
    return _child;
  }

  T get textXl2 {
    textSize = XFontSize.textxl2;
    return _child;
  }

  T get textXl3 {
    textSize = XFontSize.textxl3;
    return _child;
  }

  T get textXl4 {
    textSize = XFontSize.textxl4;
    return _child;
  }

  T get textXl5 {
    textSize = XFontSize.textxl5;
    return _child;
  }

  T get textXl6 {
    textSize = XFontSize.textxl6;
    return _child;
  }

  T get textXl7 {
    textSize = XFontSize.textxl7;
    return _child;
  }

  T get textXl8 {
    textSize = XFontSize.textxl8;
    return _child;
  }

  T get textXl9 {
    textSize = XFontSize.textxl9;
    return _child;
  }
}
