import 'package:aula_01/src/widgets/ribbon/ribbon.shape.dart';
import 'package:flutter/material.dart';

class Ribbon extends StatefulWidget {
  final double height;

  const Ribbon({super.key, this.height = 4});

  @override
  State<Ribbon> createState() => _RibbonState();
}

class _RibbonState extends State<Ribbon> with SingleTickerProviderStateMixin {
  double position = -50.0;
  AnimationController? controller;
  Animation<double>? _animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    controller?.forward();

    controller?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller?.reset();
      } else if (status == AnimationStatus.dismissed) {
        controller?.forward(from: -50.0);
      }
    });

    _animation = Tween(begin: -50.0, end: 22.0).animate(controller!);

    super.initState();

    _animation?.addListener(() {
      setState(() {
        position = _animation!.value;
      });
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: widget.height,
      child: CustomPaint(
        painter: RibbonShape(height: widget.height, position: position),
        child: Container(),
      ),
    );
  }
}
