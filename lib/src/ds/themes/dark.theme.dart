
import 'package:aula_01/src/ds/ds.dart';
import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:flutter/material.dart';

class DarkTheme extends DefaultTheme {
  
  @override
  TextStyle get appBarTitle => super.appBarTitle.copyWith(color: Colors.white);

  @override
  CustomColorScheme get colorScheme => super.colorScheme.copyWith(secondary: Colors.black);

}