// ignore_for_file: use_build_context_synchronously

import 'package:aula_01/src/ds/ds.dart';
import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:aula_01/src/pages/loading.page.dart';
import 'package:aula_01/src/utils/utils.dart';
import 'package:flutter/material.dart';

void main() {
  getIt.registerSingleton<INavitTheme>(DefaultTheme());
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: getIt.get<INavitTheme>().theme,
      home: const LoadingScreen(),
    );
  }
}
