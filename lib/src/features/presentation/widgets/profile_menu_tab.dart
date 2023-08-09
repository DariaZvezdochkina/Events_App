import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../styles/custom_text_style.dart';

class ProfileMenuTab extends StatelessWidget {
  final String title;
  final SvgPicture image;

  const ProfileMenuTab({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFEBEDF0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24, width: 24, child: image),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: CustomTextStyle.textStyle15,
            ),
          ),
          const SizedBox(width: 20),
          const Icon(Icons.keyboard_arrow_right_sharp, color: Color.fromRGBO(119, 138, 155, 1))
        ],
      ),
    );
  }
}
