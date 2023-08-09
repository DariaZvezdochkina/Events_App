import 'package:events_app/src/features/presentation/widgets/button_widget.dart';
import 'package:events_app/src/features/presentation/widgets/toggle_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo_1.png'),
            Row(
              children: [
                ButtonWidget(
                  callback: () {},
                  text: 'О фонде',
                  textColor: Colors.black,
                  backgroundColor: const Color(0xFFF5F5F5),
                  size: 40,
                ),
                const SizedBox(width: 6),
                SvgPicture.asset('assets/icons/notification_ic.svg')
              ],
            )
          ],
        ),
        const SizedBox(height: 30),
        ToggleTab()
      ],
    );
  }
}
