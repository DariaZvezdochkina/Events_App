import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../styles/custom_text_style.dart';
import '../widgets/news_widget.dart';

class MyEventsPage extends StatelessWidget {
  const MyEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Icon(Icons.arrow_back),
                  onTap: () => Navigator.pop(context),
                ),
                const Text(
                  'Мои мероприятия',
                  style: CustomTextStyle.textStyle18,
                ),
                SvgPicture.asset('assets/icons/archive_ic.svg')
              ],
            ),
            const SizedBox(height: 24),
            NewsWidget(
              title: 'Петербургский международный экономический форум',
              subTitle: 'роль: дирекция и тех персонал \n18 - 23 фев',
              image: Image.asset('assets/images/smile.png'),
            ),
            const SizedBox(height: 8),
            NewsWidget(
              title: 'Восточный экономический форум',
              subTitle: 'роль: дирекция и тех персонал \nc18 - 23 фев',
              image: Image.asset('assets/images/smile.png'),
            ),
          ],
        ),
      ),
    );
  }
}
