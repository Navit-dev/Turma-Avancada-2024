//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class IconButtonCustomPainter extends CustomPainter {
  final Color? borderSideColor;
  final Color backgroundColor;

  IconButtonCustomPainter({
    super.repaint,
    this.borderSideColor,
    this.backgroundColor = const Color(0xffe22319),
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    Offset topCenter = Offset(size.width / 2 + 36, size.height / 2 + 39);
    path_0.moveTo(
      topCenter.dx - 42.59,
      topCenter.dy - 2.79,
    );
    path_0.lineTo(
      topCenter.dx - 64.13,
      topCenter.dy - 15.23,
    );
    path_0.cubicTo(
      topCenter.dx - 68.27,
      topCenter.dy - 17.62,
      topCenter.dx - 70.81,
      topCenter.dy - 22.03,
      topCenter.dx - 70.81,
      topCenter.dy - 26.810000000000002,
    );
    path_0.lineTo(
      topCenter.dx - 70.81,
      topCenter.dy - 51.68000000000001,
    );
    path_0.cubicTo(
      topCenter.dx - 70.81,
      topCenter.dy - 56.46000000000001,
      topCenter.dx - 68.26,
      topCenter.dy - 60.870000000000005,
      topCenter.dx - 64.13,
      topCenter.dy - 63.260000000000005,
    );
    path_0.lineTo(
      topCenter.dx - 42.589999999999996,
      topCenter.dy - 75.7,
    );
    path_0.cubicTo(
      topCenter.dx - 38.449999999999996,
      topCenter.dy - 78.09,
      topCenter.dx - 33.36,
      topCenter.dy - 78.09,
      topCenter.dx - 29.22,
      topCenter.dy - 75.7,
    );
    path_0.lineTo(
      topCenter.dx - 7.68,
      topCenter.dy - 63.260000000000005,
    );
    path_0.cubicTo(
      topCenter.dx - 3.54,
      topCenter.dy - 60.870000000000005,
      topCenter.dx - 1,
      topCenter.dy - 56.46000000000001,
      topCenter.dx - 1,
      topCenter.dy - 51.68000000000001,
    );
    path_0.lineTo(
      topCenter.dx - 1,
      topCenter.dy - 26.810000000000006,
    );
    path_0.cubicTo(
      topCenter.dx - 1,
      topCenter.dy - 22.030000000000005,
      topCenter.dx - 3.55,
      topCenter.dy - 17.620000000000005,
      topCenter.dx - 7.68,
      topCenter.dy - 15.230000000000006,
    );
    path_0.lineTo(
      topCenter.dx - 29.22,
      topCenter.dy - 2.79,
    );
    path_0.cubicTo(
      topCenter.dx - 33.36,
      topCenter.dy - 0.3999999999999999,
      topCenter.dx - 38.45,
      topCenter.dy - 0.3999999999999999,
      topCenter.dx - 42.589999999999996,
      topCenter.dy - 2.79,
    );
    path_0.close();

    if (borderSideColor != null) {
      Paint paint0Stroke = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.02785127;
      paint0Stroke.color = borderSideColor!;
      canvas.drawPath(path_0, paint0Stroke);
    }

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = backgroundColor;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
