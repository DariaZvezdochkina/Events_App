import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class DotIndicator extends StatelessWidget {
  final int pageCount;
  final int activeIndex;

  const DotIndicator({super.key, required this.pageCount, required this.activeIndex});

  Widget _buildDotIndicator({required Color color, double? size = 8}) {
    return AnimatedContainer(
      height: size,
      width: size,
      margin: const EdgeInsets.only(right: 12),
      duration: const Duration(milliseconds: NumberConstants.animationDuration),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildDotRow(BuildContext context) {
    final dots = <Widget>[];

    for (var i = 0; i < pageCount; i++) {
      // find passed page index
      if (activeIndex >= i) {
        final indicator = _buildDotIndicator(color: Color(0xFFC60033));
        dots.add(indicator);

        continue;
      }

      dots.add(
        _buildDotIndicator(
          color: Colors.white,
          size: 6,
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dots,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDotRow(context);
  }
}
