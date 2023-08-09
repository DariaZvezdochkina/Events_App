import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../styles/custom_text_style.dart';
import '../../data/models/tab_item_model.dart';
import '../widgets/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<TabItemModel> _tabs = [
    TabItemModel(icon: 'assets/icons/home_ic.svg', title: 'главная'),
    TabItemModel(icon: 'assets/icons/events_ic.svg', title: 'мероприятия'),
    TabItemModel(icon: 'assets/icons/chat_ic.svg', title: 'чат'),
    TabItemModel(icon: 'assets/icons/my_profile_ic.svg', title: 'мой профиль'),
  ];

  Widget _buildTabItem(int index) {
    final tabItem = _tabs[index];

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          tabItem.icon is IconData
              ? Icon(
                  tabItem.icon,
                  color: _currentIndex == index ? Colors.black : Colors.grey,
                )
              : SvgPicture.asset(
                  tabItem.icon,
                  width: 24,
                  height: 24,
                  color: _currentIndex == index ? Colors.black : Colors.grey,
                ),
          Text(tabItem.title,
              style: CustomTextStyle.textStyle12.copyWith(
                color: _currentIndex == index ? Colors.black : Colors.grey,
              )),
          if (_currentIndex == index)
            Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                color: Color(0xFFC60033),
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    switch (_currentIndex) {
      case 0:
        return const HomeWidget();
      case 1:
        return const Text('Мероприятия');
      case 2:
        return const Text("Чат");
      case 3:
        return const Text("Профиль");
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Center(
          child: _buildContent(),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_tabs.length, (index) => _buildTabItem(index)),
        ),
      ),
    );
  }
}
