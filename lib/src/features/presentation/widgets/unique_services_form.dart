import 'package:events_app/src/features/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../styles/custom_text_style.dart';

class UniqueServicesForm extends StatelessWidget {
  final void Function() onNextStepPressed;

  const UniqueServicesForm({required this.onNextStepPressed, super.key});

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
                  "Уникальные сервисы",
                  style: CustomTextStyle.textStyle24.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Воспользуйтесь удобством специальных сервисов для участников мероприятий",
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
