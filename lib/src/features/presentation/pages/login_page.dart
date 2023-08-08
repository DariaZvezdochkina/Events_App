import 'package:events_app/src/features/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset('assets/images/logo_1.png'),
                    ),
                  ],
                ),
              ),
            ),
            ButtonWidget(
              backgroundColor: const Color(0xFFC60033),
              textColor: Colors.white,
              callback: () => Navigator.pushNamed(context, Routes.main),
              text: 'Войти через ЕЛК',
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonWidget(
              backgroundColor: const Color(0xFFFDF0F4),
              textColor: const Color(0xFFC60033),
              callback: () {},
              text: 'Войти без авторизации',
            ),
          ],
        ),
      ),
    );
  }
}
