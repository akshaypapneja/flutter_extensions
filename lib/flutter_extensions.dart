library extension_helpers;

import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension ExtendedText on Widget {
  alignAtStart() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }

  alignAtEnd() {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: this,
    );
  }

  alignAtTop() {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: this,
    );
  }

  alignAtBottom() {
    return Align(
      alignment: AlignmentDirectional.bottomCenter,
      child: this,
    );
  }
}

extension StringExtension on String {
  get firstLetterToUpperCase {
    if (this != null)
      return this[0].toUpperCase() + this.substring(1);
    else
      return null;
  }

  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

extension WidgetPadding on Widget {
  Widget paddingAll(double padding) =>
      Padding(padding: EdgeInsets.all(padding), child: this);

  Widget paddingLeft(double padding) =>
      Padding(padding: EdgeInsets.only(left: padding), child: this);

  Widget paddingRight(double padding) =>
      Padding(padding: EdgeInsets.only(right: padding), child: this);

  Widget paddingTop(double padding) =>
      Padding(padding: EdgeInsets.only(top: padding), child: this);

  Widget paddingBottom(double padding) =>
      Padding(padding: EdgeInsets.only(bottom: padding), child: this);

  Widget paddingVertical(double padding) =>
      Padding(padding: EdgeInsets.symmetric(vertical: padding), child: this);

  Widget paddingHorizontal(double padding) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: padding), child: this);
}
