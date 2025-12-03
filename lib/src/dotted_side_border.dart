import 'package:flutter/material.dart';

enum DottedLinePosition {
  top,
  bottom,
  left,
  right,
}

class DottedSideBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double strokeWidth;
  final double gap;
  final double? padding;
  final DottedLinePosition position;
  final Gradient? gradient;

  const DottedSideBorder({
    super.key,
    required this.child,
    this.color = Colors.black,
    this.strokeWidth = 1,
    this.gap = 3.0,
    this.padding,
    this.position = DottedLinePosition.bottom,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DottedLinePainter(
        color: color,
        strokeWidth: strokeWidth,
        gap: gap,
        position: position,
        gradient: gradient,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: position == DottedLinePosition.top ? (padding ?? 5) : 0,
          bottom: position == DottedLinePosition.bottom ? (padding ?? 5) : 0,
          left: position == DottedLinePosition.left ? (padding ?? 5) : 0,
          right: position == DottedLinePosition.right ? (padding ?? 5) : 0,
        ),
        child: child,
      ),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final DottedLinePosition position;
  final Gradient? gradient;

  _DottedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.gap,
    required this.position,
    this.gradient,
  });

  bool get _isHorizontal =>
      position == DottedLinePosition.top || position == DottedLinePosition.bottom;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    if (gradient != null) {
      paint.shader = gradient!.createShader(
        _isHorizontal
            ? Rect.fromLTWH(0, 0, size.width, strokeWidth)
            : Rect.fromLTWH(0, 0, strokeWidth, size.height),
      );
    } else {
      paint.color = color;
    }

    if (_isHorizontal) {
      _drawHorizontal(canvas, size, paint);
    } else {
      _drawVertical(canvas, size, paint);
    }
  }

  void _drawHorizontal(Canvas canvas, Size size, Paint paint) {
    final double y = position == DottedLinePosition.top ? 0 : size.height;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, y), Offset(startX + gap, y), paint);
      startX += gap * 2;
    }
  }

  void _drawVertical(Canvas canvas, Size size, Paint paint) {
    final double x = position == DottedLinePosition.left ? 0 : size.width;
    double startY = 0;

    while (startY < size.height) {
      canvas.drawLine(Offset(x, startY), Offset(x, startY + gap), paint);
      startY += gap * 2;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
