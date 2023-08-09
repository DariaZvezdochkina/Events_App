import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class ToggleTab extends StatefulWidget {
  const ToggleTab({super.key});

  @override
  ToggleTabState createState() => ToggleTabState();
}

class ToggleTabState extends State<ToggleTab> {
  int _currentIndex = 0;

  Widget _buildContent() {
    switch (_currentIndex) {
      case 0:
        return Text("1");
      case 1:
        return Text("2");
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Container(
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: _currentIndex == 0
                          ? Border.all(color: const Color.fromRGBO(204, 205, 207, 1))
                          : Border.all(color: Colors.transparent),
                      color: _currentIndex == 0
                          ? Colors.white
                          : const Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Мероприятия',
                      style: CustomTextStyle.textStyle12.copyWith(
                        color: _currentIndex == 0 ? Colors.black : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Container(
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: _currentIndex == 1
                          ? Border.all(color: const Color.fromRGBO(204, 205, 207, 1))
                          : Border.all(color: Colors.transparent),
                      color: _currentIndex == 1
                          ? Colors.white
                          : const Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Новости',
                      style: CustomTextStyle.textStyle12.copyWith(
                        color: _currentIndex == 1 ? Colors.black : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: _buildContent(),
        ),
      ],
    );
  }
}
