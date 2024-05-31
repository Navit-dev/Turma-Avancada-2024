
import 'package:aula_01/src/ds/ds.dart';
import 'package:aula_01/src/ds/themes/themes.dart';
import 'package:aula_01/src/pages/home.page.dart';
import 'package:aula_01/src/utils/utils.dart';
import 'package:aula_01/src/widgets/scafold.widget.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 3)).whenComplete(() async {
    //   await getIt.unregister<INavitTheme>();
    //   getIt.registerSingleton<INavitTheme>(DarkTheme());
    //   setState(() {});
    //   // Future.delayed(const Duration(seconds: 1)).whenComplete(
    //   //   () => Navigator.of(context).pushReplacement(
    //   //     MaterialPageRoute(
    //   //       builder: (_) => const MyHomePage(),
    //   //     ),
    //   //   ),
    //   // );
    // });

    Future.delayed(const Duration(seconds: 1)).whenComplete(
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const MyHomePage(),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ScafoldWidget(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                getIt.get<INavitTheme>().colorScheme.primary,
                getIt.get<INavitTheme>().colorScheme.secondary,
              ],
            ),
          ),
          duration: const Duration(seconds: 1),
          child: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}
