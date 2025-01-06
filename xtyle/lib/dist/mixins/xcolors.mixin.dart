import 'package:flutter/material.dart';
import '../raw/xcolors.dart';

mixin XColorMixin<T> {
  late T _child;

  Color? bgColor;

  Color? textColor;

  Color? iconColor;

  Color? borderColor;

  setChildColoring(T child) {
    _child = child;
  }

  T setBgColor(Color clr) {
    bgColor = clr;
    return _child;
  }

  T setTextColor(Color clr) {
    textColor = clr;
    return _child;
  }

  T setIconColor(Color clr) {
    iconColor = clr;
    return _child;
  }

  T setBorderColor(Color clr) {
    borderColor = clr;
    return _child;
  }

  T get bgObwhite50 {
    bgColor = XColors.obwhite.shade50;
    return _child;
  }

  T get textObwhite50 {
    textColor = XColors.obwhite.shade50;
    return _child;
  }

  T get iconObwhite50 {
    iconColor = XColors.obwhite.shade50;
    return _child;
  }

  T get borderObwhite50 {
    borderColor = XColors.obwhite.shade50;
    return _child;
  }

  T get bgObwhite100 {
    bgColor = XColors.obwhite.shade100;
    return _child;
  }

  T get textObwhite100 {
    textColor = XColors.obwhite.shade100;
    return _child;
  }

  T get iconObwhite100 {
    iconColor = XColors.obwhite.shade100;
    return _child;
  }

  T get borderObwhite100 {
    borderColor = XColors.obwhite.shade100;
    return _child;
  }

  T get bgObwhite200 {
    bgColor = XColors.obwhite.shade200;
    return _child;
  }

  T get textObwhite200 {
    textColor = XColors.obwhite.shade200;
    return _child;
  }

  T get iconObwhite200 {
    iconColor = XColors.obwhite.shade200;
    return _child;
  }

  T get borderObwhite200 {
    borderColor = XColors.obwhite.shade200;
    return _child;
  }

  T get bgObwhite300 {
    bgColor = XColors.obwhite.shade300;
    return _child;
  }

  T get textObwhite300 {
    textColor = XColors.obwhite.shade300;
    return _child;
  }

  T get iconObwhite300 {
    iconColor = XColors.obwhite.shade300;
    return _child;
  }

  T get borderObwhite300 {
    borderColor = XColors.obwhite.shade300;
    return _child;
  }

  T get bgObwhite400 {
    bgColor = XColors.obwhite.shade400;
    return _child;
  }

  T get textObwhite400 {
    textColor = XColors.obwhite.shade400;
    return _child;
  }

  T get iconObwhite400 {
    iconColor = XColors.obwhite.shade400;
    return _child;
  }

  T get borderObwhite400 {
    borderColor = XColors.obwhite.shade400;
    return _child;
  }

  T get bgObwhite500 {
    bgColor = XColors.obwhite.shade500;
    return _child;
  }

  T get textObwhite500 {
    textColor = XColors.obwhite.shade500;
    return _child;
  }

  T get iconObwhite500 {
    iconColor = XColors.obwhite.shade500;
    return _child;
  }

  T get borderObwhite500 {
    borderColor = XColors.obwhite.shade500;
    return _child;
  }

  T get bgObwhite600 {
    bgColor = XColors.obwhite.shade600;
    return _child;
  }

  T get textObwhite600 {
    textColor = XColors.obwhite.shade600;
    return _child;
  }

  T get iconObwhite600 {
    iconColor = XColors.obwhite.shade600;
    return _child;
  }

  T get borderObwhite600 {
    borderColor = XColors.obwhite.shade600;
    return _child;
  }

  T get bgObwhite700 {
    bgColor = XColors.obwhite.shade700;
    return _child;
  }

  T get textObwhite700 {
    textColor = XColors.obwhite.shade700;
    return _child;
  }

  T get iconObwhite700 {
    iconColor = XColors.obwhite.shade700;
    return _child;
  }

  T get borderObwhite700 {
    borderColor = XColors.obwhite.shade700;
    return _child;
  }

  T get bgObwhite800 {
    bgColor = XColors.obwhite.shade800;
    return _child;
  }

  T get textObwhite800 {
    textColor = XColors.obwhite.shade800;
    return _child;
  }

  T get iconObwhite800 {
    iconColor = XColors.obwhite.shade800;
    return _child;
  }

  T get borderObwhite800 {
    borderColor = XColors.obwhite.shade800;
    return _child;
  }

  T get bgObwhite900 {
    bgColor = XColors.obwhite.shade900;
    return _child;
  }

  T get textObwhite900 {
    textColor = XColors.obwhite.shade900;
    return _child;
  }

  T get iconObwhite900 {
    iconColor = XColors.obwhite.shade900;
    return _child;
  }

  T get borderObwhite900 {
    borderColor = XColors.obwhite.shade900;
    return _child;
  }

  T get bgObblack50 {
    bgColor = XColors.obblack.shade50;
    return _child;
  }

  T get textObblack50 {
    textColor = XColors.obblack.shade50;
    return _child;
  }

  T get iconObblack50 {
    iconColor = XColors.obblack.shade50;
    return _child;
  }

  T get borderObblack50 {
    borderColor = XColors.obblack.shade50;
    return _child;
  }

  T get bgObblack100 {
    bgColor = XColors.obblack.shade100;
    return _child;
  }

  T get textObblack100 {
    textColor = XColors.obblack.shade100;
    return _child;
  }

  T get iconObblack100 {
    iconColor = XColors.obblack.shade100;
    return _child;
  }

  T get borderObblack100 {
    borderColor = XColors.obblack.shade100;
    return _child;
  }

  T get bgObblack200 {
    bgColor = XColors.obblack.shade200;
    return _child;
  }

  T get textObblack200 {
    textColor = XColors.obblack.shade200;
    return _child;
  }

  T get iconObblack200 {
    iconColor = XColors.obblack.shade200;
    return _child;
  }

  T get borderObblack200 {
    borderColor = XColors.obblack.shade200;
    return _child;
  }

  T get bgObblack300 {
    bgColor = XColors.obblack.shade300;
    return _child;
  }

  T get textObblack300 {
    textColor = XColors.obblack.shade300;
    return _child;
  }

  T get iconObblack300 {
    iconColor = XColors.obblack.shade300;
    return _child;
  }

  T get borderObblack300 {
    borderColor = XColors.obblack.shade300;
    return _child;
  }

  T get bgObblack400 {
    bgColor = XColors.obblack.shade400;
    return _child;
  }

  T get textObblack400 {
    textColor = XColors.obblack.shade400;
    return _child;
  }

  T get iconObblack400 {
    iconColor = XColors.obblack.shade400;
    return _child;
  }

  T get borderObblack400 {
    borderColor = XColors.obblack.shade400;
    return _child;
  }

  T get bgObblack500 {
    bgColor = XColors.obblack.shade500;
    return _child;
  }

  T get textObblack500 {
    textColor = XColors.obblack.shade500;
    return _child;
  }

  T get iconObblack500 {
    iconColor = XColors.obblack.shade500;
    return _child;
  }

  T get borderObblack500 {
    borderColor = XColors.obblack.shade500;
    return _child;
  }

  T get bgObblack600 {
    bgColor = XColors.obblack.shade600;
    return _child;
  }

  T get textObblack600 {
    textColor = XColors.obblack.shade600;
    return _child;
  }

  T get iconObblack600 {
    iconColor = XColors.obblack.shade600;
    return _child;
  }

  T get borderObblack600 {
    borderColor = XColors.obblack.shade600;
    return _child;
  }

  T get bgObblack700 {
    bgColor = XColors.obblack.shade700;
    return _child;
  }

  T get textObblack700 {
    textColor = XColors.obblack.shade700;
    return _child;
  }

  T get iconObblack700 {
    iconColor = XColors.obblack.shade700;
    return _child;
  }

  T get borderObblack700 {
    borderColor = XColors.obblack.shade700;
    return _child;
  }

  T get bgObblack800 {
    bgColor = XColors.obblack.shade800;
    return _child;
  }

  T get textObblack800 {
    textColor = XColors.obblack.shade800;
    return _child;
  }

  T get iconObblack800 {
    iconColor = XColors.obblack.shade800;
    return _child;
  }

  T get borderObblack800 {
    borderColor = XColors.obblack.shade800;
    return _child;
  }

  T get bgObblack900 {
    bgColor = XColors.obblack.shade900;
    return _child;
  }

  T get textObblack900 {
    textColor = XColors.obblack.shade900;
    return _child;
  }

  T get iconObblack900 {
    iconColor = XColors.obblack.shade900;
    return _child;
  }

  T get borderObblack900 {
    borderColor = XColors.obblack.shade900;
    return _child;
  }

  T get bgObneutral50 {
    bgColor = XColors.obneutral.shade50;
    return _child;
  }

  T get textObneutral50 {
    textColor = XColors.obneutral.shade50;
    return _child;
  }

  T get iconObneutral50 {
    iconColor = XColors.obneutral.shade50;
    return _child;
  }

  T get borderObneutral50 {
    borderColor = XColors.obneutral.shade50;
    return _child;
  }

  T get bgObneutral100 {
    bgColor = XColors.obneutral.shade100;
    return _child;
  }

  T get textObneutral100 {
    textColor = XColors.obneutral.shade100;
    return _child;
  }

  T get iconObneutral100 {
    iconColor = XColors.obneutral.shade100;
    return _child;
  }

  T get borderObneutral100 {
    borderColor = XColors.obneutral.shade100;
    return _child;
  }

  T get bgObneutral200 {
    bgColor = XColors.obneutral.shade200;
    return _child;
  }

  T get textObneutral200 {
    textColor = XColors.obneutral.shade200;
    return _child;
  }

  T get iconObneutral200 {
    iconColor = XColors.obneutral.shade200;
    return _child;
  }

  T get borderObneutral200 {
    borderColor = XColors.obneutral.shade200;
    return _child;
  }

  T get bgObneutral300 {
    bgColor = XColors.obneutral.shade300;
    return _child;
  }

  T get textObneutral300 {
    textColor = XColors.obneutral.shade300;
    return _child;
  }

  T get iconObneutral300 {
    iconColor = XColors.obneutral.shade300;
    return _child;
  }

  T get borderObneutral300 {
    borderColor = XColors.obneutral.shade300;
    return _child;
  }

  T get bgObneutral400 {
    bgColor = XColors.obneutral.shade400;
    return _child;
  }

  T get textObneutral400 {
    textColor = XColors.obneutral.shade400;
    return _child;
  }

  T get iconObneutral400 {
    iconColor = XColors.obneutral.shade400;
    return _child;
  }

  T get borderObneutral400 {
    borderColor = XColors.obneutral.shade400;
    return _child;
  }

  T get bgObneutral500 {
    bgColor = XColors.obneutral.shade500;
    return _child;
  }

  T get textObneutral500 {
    textColor = XColors.obneutral.shade500;
    return _child;
  }

  T get iconObneutral500 {
    iconColor = XColors.obneutral.shade500;
    return _child;
  }

  T get borderObneutral500 {
    borderColor = XColors.obneutral.shade500;
    return _child;
  }

  T get bgObneutral600 {
    bgColor = XColors.obneutral.shade600;
    return _child;
  }

  T get textObneutral600 {
    textColor = XColors.obneutral.shade600;
    return _child;
  }

  T get iconObneutral600 {
    iconColor = XColors.obneutral.shade600;
    return _child;
  }

  T get borderObneutral600 {
    borderColor = XColors.obneutral.shade600;
    return _child;
  }

  T get bgObneutral700 {
    bgColor = XColors.obneutral.shade700;
    return _child;
  }

  T get textObneutral700 {
    textColor = XColors.obneutral.shade700;
    return _child;
  }

  T get iconObneutral700 {
    iconColor = XColors.obneutral.shade700;
    return _child;
  }

  T get borderObneutral700 {
    borderColor = XColors.obneutral.shade700;
    return _child;
  }

  T get bgObneutral800 {
    bgColor = XColors.obneutral.shade800;
    return _child;
  }

  T get textObneutral800 {
    textColor = XColors.obneutral.shade800;
    return _child;
  }

  T get iconObneutral800 {
    iconColor = XColors.obneutral.shade800;
    return _child;
  }

  T get borderObneutral800 {
    borderColor = XColors.obneutral.shade800;
    return _child;
  }

  T get bgObneutral900 {
    bgColor = XColors.obneutral.shade900;
    return _child;
  }

  T get textObneutral900 {
    textColor = XColors.obneutral.shade900;
    return _child;
  }

  T get iconObneutral900 {
    iconColor = XColors.obneutral.shade900;
    return _child;
  }

  T get borderObneutral900 {
    borderColor = XColors.obneutral.shade900;
    return _child;
  }

  T get bgObblue50 {
    bgColor = XColors.obblue.shade50;
    return _child;
  }

  T get textObblue50 {
    textColor = XColors.obblue.shade50;
    return _child;
  }

  T get iconObblue50 {
    iconColor = XColors.obblue.shade50;
    return _child;
  }

  T get borderObblue50 {
    borderColor = XColors.obblue.shade50;
    return _child;
  }

  T get bgObblue100 {
    bgColor = XColors.obblue.shade100;
    return _child;
  }

  T get textObblue100 {
    textColor = XColors.obblue.shade100;
    return _child;
  }

  T get iconObblue100 {
    iconColor = XColors.obblue.shade100;
    return _child;
  }

  T get borderObblue100 {
    borderColor = XColors.obblue.shade100;
    return _child;
  }

  T get bgObblue200 {
    bgColor = XColors.obblue.shade200;
    return _child;
  }

  T get textObblue200 {
    textColor = XColors.obblue.shade200;
    return _child;
  }

  T get iconObblue200 {
    iconColor = XColors.obblue.shade200;
    return _child;
  }

  T get borderObblue200 {
    borderColor = XColors.obblue.shade200;
    return _child;
  }

  T get bgObblue300 {
    bgColor = XColors.obblue.shade300;
    return _child;
  }

  T get textObblue300 {
    textColor = XColors.obblue.shade300;
    return _child;
  }

  T get iconObblue300 {
    iconColor = XColors.obblue.shade300;
    return _child;
  }

  T get borderObblue300 {
    borderColor = XColors.obblue.shade300;
    return _child;
  }

  T get bgObblue400 {
    bgColor = XColors.obblue.shade400;
    return _child;
  }

  T get textObblue400 {
    textColor = XColors.obblue.shade400;
    return _child;
  }

  T get iconObblue400 {
    iconColor = XColors.obblue.shade400;
    return _child;
  }

  T get borderObblue400 {
    borderColor = XColors.obblue.shade400;
    return _child;
  }

  T get bgObblue500 {
    bgColor = XColors.obblue.shade500;
    return _child;
  }

  T get textObblue500 {
    textColor = XColors.obblue.shade500;
    return _child;
  }

  T get iconObblue500 {
    iconColor = XColors.obblue.shade500;
    return _child;
  }

  T get borderObblue500 {
    borderColor = XColors.obblue.shade500;
    return _child;
  }

  T get bgObblue600 {
    bgColor = XColors.obblue.shade600;
    return _child;
  }

  T get textObblue600 {
    textColor = XColors.obblue.shade600;
    return _child;
  }

  T get iconObblue600 {
    iconColor = XColors.obblue.shade600;
    return _child;
  }

  T get borderObblue600 {
    borderColor = XColors.obblue.shade600;
    return _child;
  }

  T get bgObblue700 {
    bgColor = XColors.obblue.shade700;
    return _child;
  }

  T get textObblue700 {
    textColor = XColors.obblue.shade700;
    return _child;
  }

  T get iconObblue700 {
    iconColor = XColors.obblue.shade700;
    return _child;
  }

  T get borderObblue700 {
    borderColor = XColors.obblue.shade700;
    return _child;
  }

  T get bgObblue800 {
    bgColor = XColors.obblue.shade800;
    return _child;
  }

  T get textObblue800 {
    textColor = XColors.obblue.shade800;
    return _child;
  }

  T get iconObblue800 {
    iconColor = XColors.obblue.shade800;
    return _child;
  }

  T get borderObblue800 {
    borderColor = XColors.obblue.shade800;
    return _child;
  }

  T get bgObblue900 {
    bgColor = XColors.obblue.shade900;
    return _child;
  }

  T get textObblue900 {
    textColor = XColors.obblue.shade900;
    return _child;
  }

  T get iconObblue900 {
    iconColor = XColors.obblue.shade900;
    return _child;
  }

  T get borderObblue900 {
    borderColor = XColors.obblue.shade900;
    return _child;
  }

  T get bgObsuccess50 {
    bgColor = XColors.obsuccess.shade50;
    return _child;
  }

  T get textObsuccess50 {
    textColor = XColors.obsuccess.shade50;
    return _child;
  }

  T get iconObsuccess50 {
    iconColor = XColors.obsuccess.shade50;
    return _child;
  }

  T get borderObsuccess50 {
    borderColor = XColors.obsuccess.shade50;
    return _child;
  }

  T get bgObsuccess100 {
    bgColor = XColors.obsuccess.shade100;
    return _child;
  }

  T get textObsuccess100 {
    textColor = XColors.obsuccess.shade100;
    return _child;
  }

  T get iconObsuccess100 {
    iconColor = XColors.obsuccess.shade100;
    return _child;
  }

  T get borderObsuccess100 {
    borderColor = XColors.obsuccess.shade100;
    return _child;
  }

  T get bgObsuccess200 {
    bgColor = XColors.obsuccess.shade200;
    return _child;
  }

  T get textObsuccess200 {
    textColor = XColors.obsuccess.shade200;
    return _child;
  }

  T get iconObsuccess200 {
    iconColor = XColors.obsuccess.shade200;
    return _child;
  }

  T get borderObsuccess200 {
    borderColor = XColors.obsuccess.shade200;
    return _child;
  }

  T get bgObsuccess300 {
    bgColor = XColors.obsuccess.shade300;
    return _child;
  }

  T get textObsuccess300 {
    textColor = XColors.obsuccess.shade300;
    return _child;
  }

  T get iconObsuccess300 {
    iconColor = XColors.obsuccess.shade300;
    return _child;
  }

  T get borderObsuccess300 {
    borderColor = XColors.obsuccess.shade300;
    return _child;
  }

  T get bgObsuccess400 {
    bgColor = XColors.obsuccess.shade400;
    return _child;
  }

  T get textObsuccess400 {
    textColor = XColors.obsuccess.shade400;
    return _child;
  }

  T get iconObsuccess400 {
    iconColor = XColors.obsuccess.shade400;
    return _child;
  }

  T get borderObsuccess400 {
    borderColor = XColors.obsuccess.shade400;
    return _child;
  }

  T get bgObsuccess500 {
    bgColor = XColors.obsuccess.shade500;
    return _child;
  }

  T get textObsuccess500 {
    textColor = XColors.obsuccess.shade500;
    return _child;
  }

  T get iconObsuccess500 {
    iconColor = XColors.obsuccess.shade500;
    return _child;
  }

  T get borderObsuccess500 {
    borderColor = XColors.obsuccess.shade500;
    return _child;
  }

  T get bgObsuccess600 {
    bgColor = XColors.obsuccess.shade600;
    return _child;
  }

  T get textObsuccess600 {
    textColor = XColors.obsuccess.shade600;
    return _child;
  }

  T get iconObsuccess600 {
    iconColor = XColors.obsuccess.shade600;
    return _child;
  }

  T get borderObsuccess600 {
    borderColor = XColors.obsuccess.shade600;
    return _child;
  }

  T get bgObsuccess700 {
    bgColor = XColors.obsuccess.shade700;
    return _child;
  }

  T get textObsuccess700 {
    textColor = XColors.obsuccess.shade700;
    return _child;
  }

  T get iconObsuccess700 {
    iconColor = XColors.obsuccess.shade700;
    return _child;
  }

  T get borderObsuccess700 {
    borderColor = XColors.obsuccess.shade700;
    return _child;
  }

  T get bgObsuccess800 {
    bgColor = XColors.obsuccess.shade800;
    return _child;
  }

  T get textObsuccess800 {
    textColor = XColors.obsuccess.shade800;
    return _child;
  }

  T get iconObsuccess800 {
    iconColor = XColors.obsuccess.shade800;
    return _child;
  }

  T get borderObsuccess800 {
    borderColor = XColors.obsuccess.shade800;
    return _child;
  }

  T get bgObsuccess900 {
    bgColor = XColors.obsuccess.shade900;
    return _child;
  }

  T get textObsuccess900 {
    textColor = XColors.obsuccess.shade900;
    return _child;
  }

  T get iconObsuccess900 {
    iconColor = XColors.obsuccess.shade900;
    return _child;
  }

  T get borderObsuccess900 {
    borderColor = XColors.obsuccess.shade900;
    return _child;
  }

  T get bgObdanger50 {
    bgColor = XColors.obdanger.shade50;
    return _child;
  }

  T get textObdanger50 {
    textColor = XColors.obdanger.shade50;
    return _child;
  }

  T get iconObdanger50 {
    iconColor = XColors.obdanger.shade50;
    return _child;
  }

  T get borderObdanger50 {
    borderColor = XColors.obdanger.shade50;
    return _child;
  }

  T get bgObdanger100 {
    bgColor = XColors.obdanger.shade100;
    return _child;
  }

  T get textObdanger100 {
    textColor = XColors.obdanger.shade100;
    return _child;
  }

  T get iconObdanger100 {
    iconColor = XColors.obdanger.shade100;
    return _child;
  }

  T get borderObdanger100 {
    borderColor = XColors.obdanger.shade100;
    return _child;
  }

  T get bgObdanger200 {
    bgColor = XColors.obdanger.shade200;
    return _child;
  }

  T get textObdanger200 {
    textColor = XColors.obdanger.shade200;
    return _child;
  }

  T get iconObdanger200 {
    iconColor = XColors.obdanger.shade200;
    return _child;
  }

  T get borderObdanger200 {
    borderColor = XColors.obdanger.shade200;
    return _child;
  }

  T get bgObdanger300 {
    bgColor = XColors.obdanger.shade300;
    return _child;
  }

  T get textObdanger300 {
    textColor = XColors.obdanger.shade300;
    return _child;
  }

  T get iconObdanger300 {
    iconColor = XColors.obdanger.shade300;
    return _child;
  }

  T get borderObdanger300 {
    borderColor = XColors.obdanger.shade300;
    return _child;
  }

  T get bgObdanger400 {
    bgColor = XColors.obdanger.shade400;
    return _child;
  }

  T get textObdanger400 {
    textColor = XColors.obdanger.shade400;
    return _child;
  }

  T get iconObdanger400 {
    iconColor = XColors.obdanger.shade400;
    return _child;
  }

  T get borderObdanger400 {
    borderColor = XColors.obdanger.shade400;
    return _child;
  }

  T get bgObdanger500 {
    bgColor = XColors.obdanger.shade500;
    return _child;
  }

  T get textObdanger500 {
    textColor = XColors.obdanger.shade500;
    return _child;
  }

  T get iconObdanger500 {
    iconColor = XColors.obdanger.shade500;
    return _child;
  }

  T get borderObdanger500 {
    borderColor = XColors.obdanger.shade500;
    return _child;
  }

  T get bgObdanger600 {
    bgColor = XColors.obdanger.shade600;
    return _child;
  }

  T get textObdanger600 {
    textColor = XColors.obdanger.shade600;
    return _child;
  }

  T get iconObdanger600 {
    iconColor = XColors.obdanger.shade600;
    return _child;
  }

  T get borderObdanger600 {
    borderColor = XColors.obdanger.shade600;
    return _child;
  }

  T get bgObdanger700 {
    bgColor = XColors.obdanger.shade700;
    return _child;
  }

  T get textObdanger700 {
    textColor = XColors.obdanger.shade700;
    return _child;
  }

  T get iconObdanger700 {
    iconColor = XColors.obdanger.shade700;
    return _child;
  }

  T get borderObdanger700 {
    borderColor = XColors.obdanger.shade700;
    return _child;
  }

  T get bgObdanger800 {
    bgColor = XColors.obdanger.shade800;
    return _child;
  }

  T get textObdanger800 {
    textColor = XColors.obdanger.shade800;
    return _child;
  }

  T get iconObdanger800 {
    iconColor = XColors.obdanger.shade800;
    return _child;
  }

  T get borderObdanger800 {
    borderColor = XColors.obdanger.shade800;
    return _child;
  }

  T get bgObdanger900 {
    bgColor = XColors.obdanger.shade900;
    return _child;
  }

  T get textObdanger900 {
    textColor = XColors.obdanger.shade900;
    return _child;
  }

  T get iconObdanger900 {
    iconColor = XColors.obdanger.shade900;
    return _child;
  }

  T get borderObdanger900 {
    borderColor = XColors.obdanger.shade900;
    return _child;
  }

  T get bgObwarning50 {
    bgColor = XColors.obwarning.shade50;
    return _child;
  }

  T get textObwarning50 {
    textColor = XColors.obwarning.shade50;
    return _child;
  }

  T get iconObwarning50 {
    iconColor = XColors.obwarning.shade50;
    return _child;
  }

  T get borderObwarning50 {
    borderColor = XColors.obwarning.shade50;
    return _child;
  }

  T get bgObwarning100 {
    bgColor = XColors.obwarning.shade100;
    return _child;
  }

  T get textObwarning100 {
    textColor = XColors.obwarning.shade100;
    return _child;
  }

  T get iconObwarning100 {
    iconColor = XColors.obwarning.shade100;
    return _child;
  }

  T get borderObwarning100 {
    borderColor = XColors.obwarning.shade100;
    return _child;
  }

  T get bgObwarning200 {
    bgColor = XColors.obwarning.shade200;
    return _child;
  }

  T get textObwarning200 {
    textColor = XColors.obwarning.shade200;
    return _child;
  }

  T get iconObwarning200 {
    iconColor = XColors.obwarning.shade200;
    return _child;
  }

  T get borderObwarning200 {
    borderColor = XColors.obwarning.shade200;
    return _child;
  }

  T get bgObwarning300 {
    bgColor = XColors.obwarning.shade300;
    return _child;
  }

  T get textObwarning300 {
    textColor = XColors.obwarning.shade300;
    return _child;
  }

  T get iconObwarning300 {
    iconColor = XColors.obwarning.shade300;
    return _child;
  }

  T get borderObwarning300 {
    borderColor = XColors.obwarning.shade300;
    return _child;
  }

  T get bgObwarning400 {
    bgColor = XColors.obwarning.shade400;
    return _child;
  }

  T get textObwarning400 {
    textColor = XColors.obwarning.shade400;
    return _child;
  }

  T get iconObwarning400 {
    iconColor = XColors.obwarning.shade400;
    return _child;
  }

  T get borderObwarning400 {
    borderColor = XColors.obwarning.shade400;
    return _child;
  }

  T get bgObwarning500 {
    bgColor = XColors.obwarning.shade500;
    return _child;
  }

  T get textObwarning500 {
    textColor = XColors.obwarning.shade500;
    return _child;
  }

  T get iconObwarning500 {
    iconColor = XColors.obwarning.shade500;
    return _child;
  }

  T get borderObwarning500 {
    borderColor = XColors.obwarning.shade500;
    return _child;
  }

  T get bgObwarning600 {
    bgColor = XColors.obwarning.shade600;
    return _child;
  }

  T get textObwarning600 {
    textColor = XColors.obwarning.shade600;
    return _child;
  }

  T get iconObwarning600 {
    iconColor = XColors.obwarning.shade600;
    return _child;
  }

  T get borderObwarning600 {
    borderColor = XColors.obwarning.shade600;
    return _child;
  }

  T get bgObwarning700 {
    bgColor = XColors.obwarning.shade700;
    return _child;
  }

  T get textObwarning700 {
    textColor = XColors.obwarning.shade700;
    return _child;
  }

  T get iconObwarning700 {
    iconColor = XColors.obwarning.shade700;
    return _child;
  }

  T get borderObwarning700 {
    borderColor = XColors.obwarning.shade700;
    return _child;
  }

  T get bgObwarning800 {
    bgColor = XColors.obwarning.shade800;
    return _child;
  }

  T get textObwarning800 {
    textColor = XColors.obwarning.shade800;
    return _child;
  }

  T get iconObwarning800 {
    iconColor = XColors.obwarning.shade800;
    return _child;
  }

  T get borderObwarning800 {
    borderColor = XColors.obwarning.shade800;
    return _child;
  }

  T get bgObwarning900 {
    bgColor = XColors.obwarning.shade900;
    return _child;
  }

  T get textObwarning900 {
    textColor = XColors.obwarning.shade900;
    return _child;
  }

  T get iconObwarning900 {
    iconColor = XColors.obwarning.shade900;
    return _child;
  }

  T get borderObwarning900 {
    borderColor = XColors.obwarning.shade900;
    return _child;
  }

  T get bgObnavy50 {
    bgColor = XColors.obnavy.shade50;
    return _child;
  }

  T get textObnavy50 {
    textColor = XColors.obnavy.shade50;
    return _child;
  }

  T get iconObnavy50 {
    iconColor = XColors.obnavy.shade50;
    return _child;
  }

  T get borderObnavy50 {
    borderColor = XColors.obnavy.shade50;
    return _child;
  }

  T get bgObnavy100 {
    bgColor = XColors.obnavy.shade100;
    return _child;
  }

  T get textObnavy100 {
    textColor = XColors.obnavy.shade100;
    return _child;
  }

  T get iconObnavy100 {
    iconColor = XColors.obnavy.shade100;
    return _child;
  }

  T get borderObnavy100 {
    borderColor = XColors.obnavy.shade100;
    return _child;
  }

  T get bgObnavy200 {
    bgColor = XColors.obnavy.shade200;
    return _child;
  }

  T get textObnavy200 {
    textColor = XColors.obnavy.shade200;
    return _child;
  }

  T get iconObnavy200 {
    iconColor = XColors.obnavy.shade200;
    return _child;
  }

  T get borderObnavy200 {
    borderColor = XColors.obnavy.shade200;
    return _child;
  }

  T get bgObnavy300 {
    bgColor = XColors.obnavy.shade300;
    return _child;
  }

  T get textObnavy300 {
    textColor = XColors.obnavy.shade300;
    return _child;
  }

  T get iconObnavy300 {
    iconColor = XColors.obnavy.shade300;
    return _child;
  }

  T get borderObnavy300 {
    borderColor = XColors.obnavy.shade300;
    return _child;
  }

  T get bgObnavy400 {
    bgColor = XColors.obnavy.shade400;
    return _child;
  }

  T get textObnavy400 {
    textColor = XColors.obnavy.shade400;
    return _child;
  }

  T get iconObnavy400 {
    iconColor = XColors.obnavy.shade400;
    return _child;
  }

  T get borderObnavy400 {
    borderColor = XColors.obnavy.shade400;
    return _child;
  }

  T get bgObnavy500 {
    bgColor = XColors.obnavy.shade500;
    return _child;
  }

  T get textObnavy500 {
    textColor = XColors.obnavy.shade500;
    return _child;
  }

  T get iconObnavy500 {
    iconColor = XColors.obnavy.shade500;
    return _child;
  }

  T get borderObnavy500 {
    borderColor = XColors.obnavy.shade500;
    return _child;
  }

  T get bgObnavy600 {
    bgColor = XColors.obnavy.shade600;
    return _child;
  }

  T get textObnavy600 {
    textColor = XColors.obnavy.shade600;
    return _child;
  }

  T get iconObnavy600 {
    iconColor = XColors.obnavy.shade600;
    return _child;
  }

  T get borderObnavy600 {
    borderColor = XColors.obnavy.shade600;
    return _child;
  }

  T get bgObnavy700 {
    bgColor = XColors.obnavy.shade700;
    return _child;
  }

  T get textObnavy700 {
    textColor = XColors.obnavy.shade700;
    return _child;
  }

  T get iconObnavy700 {
    iconColor = XColors.obnavy.shade700;
    return _child;
  }

  T get borderObnavy700 {
    borderColor = XColors.obnavy.shade700;
    return _child;
  }

  T get bgObnavy800 {
    bgColor = XColors.obnavy.shade800;
    return _child;
  }

  T get textObnavy800 {
    textColor = XColors.obnavy.shade800;
    return _child;
  }

  T get iconObnavy800 {
    iconColor = XColors.obnavy.shade800;
    return _child;
  }

  T get borderObnavy800 {
    borderColor = XColors.obnavy.shade800;
    return _child;
  }

  T get bgObnavy900 {
    bgColor = XColors.obnavy.shade900;
    return _child;
  }

  T get textObnavy900 {
    textColor = XColors.obnavy.shade900;
    return _child;
  }

  T get iconObnavy900 {
    iconColor = XColors.obnavy.shade900;
    return _child;
  }

  T get borderObnavy900 {
    borderColor = XColors.obnavy.shade900;
    return _child;
  }
}
