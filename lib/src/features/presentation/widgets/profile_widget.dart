import 'package:events_app/src/features/presentation/widgets/avatar_widget.dart';
import 'package:events_app/src/features/presentation/widgets/profile_menu_tab.dart';
import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/routes.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Мой профиль",
            style: CustomTextStyle.textStyle32,
          ),
        ),
        const SizedBox(height: 20),
        const AvatarWidget(),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Основное",
            style: CustomTextStyle.textStyle14.copyWith(
              color: const Color.fromRGBO(109, 120, 133, 1),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            late String title;
            late String imagePath;

            switch (index) {
              case 0:
                title = "Центр уведомлений";
                imagePath = "assets/icons/centre_notify_ic.svg";
                break;
              case 1:
                title = "Мои мероприятия";
                imagePath = "assets/icons/my_events_ic.svg";
                break;
              case 2:
                title = "Сервисы?";
                imagePath = "assets/icons/services_ic.svg";
                break;
              case 3:
                title = "Статус бейдж и ТС";
                imagePath = "assets/icons/status_ic.svg";
                break;
              case 4:
                title = "Настройки аккаунта";
                imagePath = "assets/icons/settings_ic.svg";
                break;
              default:
                title = "Default Title";
                imagePath = "assets/icons/settings_ic.svg";
            }

            return Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Routes.detailedNews),
                  child: ProfileMenuTab(
                    title: title,
                    image: SvgPicture.asset(imagePath),
                  ),
                ),
                const SizedBox(height: 8), // Add vertical spacing
              ],
            );
          },
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: const Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xFFEBEDF0))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Выйти из аккаунта',
                  style: CustomTextStyle.textStyle16
                      .copyWith(color: const Color.fromRGBO(255, 65, 65, 1)),
                ),
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/exit_ic.svg')
            ],
          ),
        )
      ],
    );
  }
}
