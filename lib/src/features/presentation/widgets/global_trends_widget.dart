import 'package:events_app/src/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:events_app/src/features/presentation/widgets/news_widget.dart';

class GlobalTrendsWidget extends StatelessWidget {
  const GlobalTrendsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        late String title;
        late String subTitle;
        late String imagePath;

        switch (index) {
          case 0:
            title =
                "Последние разработки в области энергоэффективности, инженерных систем, архитектуры и дизайна: что покажет Россия на выставке UzBuild";
            subTitle = "28 фев 2023 • 5 мин";
            imagePath = "assets/images/news_1.png";
            break;
          case 1:
            title =
                "Стратегии поддержки и новые горизонты: в преддверии Российского форума дизайна и моды";
            subTitle = "27 фев 2023 • 5 мин";
            imagePath = "assets/images/news_1.png";
            break;
          case 2:
            title = "Почему нет санкций на производство титана?";
            subTitle = "27 фев 2023 • 5 мин";
            imagePath = "assets/images/news_1.png";
            break;
          case 3:
            title = "Почему нет санкций на производство титана?";
            subTitle = "27 фев 2023 • 5 мин";
            imagePath = "assets/images/news_1.png";
            break;
          default:
            title = "Default Title";
            subTitle = "Default Subtitle";
            imagePath = "assets/images/news_1.png";
        }

        return Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.detailedNews),
              child: NewsWidget(
                title: title,
                subTitle: subTitle,
                image: Image.asset(imagePath),
              ),
            ),
            const SizedBox(height: 8), // Add vertical spacing
          ],
        );
      },
    );
  }
}
