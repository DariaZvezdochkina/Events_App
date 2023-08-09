import 'package:events_app/src/features/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../../styles/custom_text_style.dart';
import '../../../core/utils/routes.dart';

class EventsProgramForm extends StatelessWidget {

  const EventsProgramForm({super.key});

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
                  "Программа мероприятий",
                  style: CustomTextStyle.textStyle24.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Всегда под рукой актуальная информация о программе мероприятия",
                  style: CustomTextStyle.textStyle16.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                ButtonWidget(
                  backgroundColor: const Color(0xFFC60033),
                  textColor: Colors.white,
                  callback: () => Navigator.pushNamed(context, Routes.home),
                  text: 'Начать работу',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
