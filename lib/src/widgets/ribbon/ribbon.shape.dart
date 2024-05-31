import 'package:aula_01/src/ds/ds.dart';
import 'package:aula_01/src/utils/utils.dart';
import 'package:flutter/material.dart';

class RibbonShape extends CustomPainter {
  final double position;
  final double height;
  final int lineSize;
  final int intermision;

  RibbonShape({
    this.lineSize = 10,
    this.intermision = 25,
    this.height = 4,
    this.position = 0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    int steps = size.width ~/ (lineSize + intermision);

    Paint blueLine = Paint()
      ..color = getIt.get<INavitTheme>().ribbonBlue
      ..strokeWidth = 1
      ..isAntiAlias = true;

    Path bluePath = Path();
    bluePath.addPolygon([
      const Offset(0, 0),
      Offset(size.width, 0),
      Offset(size.width, height),
      Offset(0, height),
    ], true);

    Paint whiteLine = Paint()
      ..color = getIt.get<INavitTheme>().ribbonWhite
      ..strokeWidth = 1
      ..isAntiAlias = true;

    Paint redLine = Paint()
      ..color = getIt.get<INavitTheme>().ribbonRed
      ..strokeWidth = 1
      ..isAntiAlias = true;

    canvas.drawPath(bluePath, blueLine);

    for (var i = 0; i <= steps + 4; i++) {
      var startLine = 16.0 + (i * (lineSize + intermision));
      Path path = Path();

      path.addPolygon([
        Offset(position + startLine, 0),
        Offset(position + startLine + lineSize, 0),
        Offset(position + startLine + lineSize - 5, height),
        Offset(position + startLine - 5, height),
      ], true);
      if (i.isEven) {
        canvas.drawPath(path, whiteLine);
      } else {
        canvas.drawPath(path, redLine);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
