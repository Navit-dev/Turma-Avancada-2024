import 'package:flutter/material.dart';

class ScafoldWidget extends StatelessWidget {
  final Widget child;

  const ScafoldWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.noScaling,
      ),
      child: child,
    );
  }
}
