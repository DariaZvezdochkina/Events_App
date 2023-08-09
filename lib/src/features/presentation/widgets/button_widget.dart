import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? size;

  const ButtonWidget(
      {required this.callback,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      super.key,
      this.size = 56});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: CustomTextStyle.textStyle16.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
