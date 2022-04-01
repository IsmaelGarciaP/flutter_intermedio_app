import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_intermedio_app/src/utils/colors.dart';

class HomeTabBarIndicator extends Decoration {
  final Color color;
  final double size;

  HomeTabBarIndicator({
    this.color = primaryColor,
    this.size = 5,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(color, size);
  }
}

class _CustomPainter extends BoxPainter {
  final Color color;
  final double size;

  _CustomPainter(this.color, this.size);

  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration configuration,
  ) {
    final Paint paint = Paint();
    paint.color = color;
    final width = configuration.size!.width;
    final height = configuration.size!.height;
    final Offset pos = Offset(offset.dx + width / 2, height - 10);
    canvas.drawCircle(pos, size/2, paint);
  }
}
