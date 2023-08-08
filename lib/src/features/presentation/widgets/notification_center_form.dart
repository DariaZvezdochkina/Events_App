import 'package:events_app/src/features/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../styles/custom_text_style.dart';

class NotificationCenterForm extends StatelessWidget {
  final void Function() onNextStepPressed;

  const NotificationCenterForm({required this.onNextStepPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Центр уведомлений",
                  style: CustomTextStyle.textStyle24.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Сразу после наступления события, мы уведомим вас сообщением на мобильном устройстве ",
                  style: CustomTextStyle.textStyle16.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                ButtonWidget(
                  backgroundColor: const Color(0xFFC60033),
                  textColor: Colors.white,
                  callback: onNextStepPressed,
                  text: 'Далее',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
