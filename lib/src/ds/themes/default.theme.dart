import 'package:aula_01/src/ds/ds.dart';
import 'package:flutter/material.dart';

part 'default.theme.extension.dart';

class DefaultTheme implements INavitTheme {
  @override
  TextStyle get appBarTitle => const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );

  @override
  Color get backgroundColor => colorScheme.secondary;

  @override
  Color get textColor => const Color(0xFF010101);

  @override
  Color get productBackground => const Color(0xFF000000);

  @override
  Color get productTextColor => const Color(0xFF000000);

  @override
  Color get ribbonRed => const Color(0xFFFF4539);

  @override
  Color get ribbonBlue => const Color(0xFF0286D1);

  @override
  Color get ribbonWhite => const Color(0xFFFFFFFF);

  @override
  ThemeData get theme => ThemeData(
        colorSchemeSeed: colorScheme.primary,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: colorScheme.secondary,
          titleTextStyle: appBarTitle,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colorScheme.primary))),
        // iconButtonTheme: IconButtonThemeData(
        //     style: ButtonStyle(
        //         backgroundColor: WidgetStatePropertyAll(colorScheme.primary))),
        buttonTheme: ButtonThemeData(
          buttonColor: colorScheme.primary,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: Colors.black,
          selectedItemColor: colorScheme.primary,
        ),
        scaffoldBackgroundColor: colorScheme.secondary,
      );

  @override
  CustomColorScheme get colorScheme => CustomColorScheme(
        primary: const Color(0xFFE22319),
        secondary: Colors.white,
        danger: const Color(0xFFE22319),
        warning: Colors.yellow,
        success: Colors.green,
      );
}
