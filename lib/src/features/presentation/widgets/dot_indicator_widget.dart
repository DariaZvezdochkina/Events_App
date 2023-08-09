import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class DotIndicator extends StatelessWidget {
  final int pageCount;
  final int activeIndex;
  final Color color;
  final Color inactiveColor;

  const DotIndicator(
      {super.key,
      required this.pageCount,
      required this.activeIndex,
      required this.color,
      required this.inactiveColor});

  Widget _buildDotIndicator({required Color color, double? size = 8, bool isActive = false}) {
    return AnimatedContainer(
      height: size,
      width: isActive ? size! * 1.5 : size,
      margin: const EdgeInsets.only(right: 12),
      duration: const Duration(milliseconds: NumberConstants.animationDuration),
      decoration: BoxDecoration(
        color: isActive ? color : inactiveColor,
        shape: BoxShape.circle,
      ),
      child: isActive
          ? ClipRRect(
              borderRadius: BorderRadius.circular(size! / 2),
              child: Container(
                color: color,
              ),
            )
          : null,
    );
  }

  Widget _buildDotRow(BuildContext context) {
    final dots = <Widget>[];

    for (var i = 0; i < pageCount; i++) {
      final isActive = i == activeIndex;
      final indicator = _buildDotIndicator(color: color, isActive: isActive);
      dots.add(indicator);
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
