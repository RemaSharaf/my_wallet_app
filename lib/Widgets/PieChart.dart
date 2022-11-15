import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_wallet_app/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          boxShadow: AppColors.shadow,
          color: AppColors.primary,
          shape: BoxShape.circle),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomPaint(
              foregroundPainter: PieChartPainter(),
              child: Container(),
            ),
          ),
          Center(
            child: Container(
              width: size.width / 5,
              height: size.height / 7,
              child: Center(
                  child: Text(
                "\$" + "1,280.2",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              )),
              decoration: BoxDecoration(
                  boxShadow: AppColors.shadow,
                  color: AppColors.primary,
                  shape: BoxShape.circle),
            ),
          )
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    category.forEach((f) => total += f['amount']);
    for (var i = 0; i < category.length; i++) {
      final currentCategory = category[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
