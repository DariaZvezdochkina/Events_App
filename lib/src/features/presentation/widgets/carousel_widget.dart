import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'dot_indicator_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final List<String> imageUrls = [
    'assets/images/meeting_card.png',
    'assets/images/picture_1.jpeg',
    'assets/images/picture_3.jpeg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 6), // Set the spacing
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  imageUrls[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 500, // Set the desired height
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 500,
            enableInfiniteScroll: true,
            autoPlay: false,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        DotIndicator(
          color: const Color.fromRGBO(33, 33, 34, 1),
          pageCount: imageUrls.length,
          activeIndex: _currentIndex,
          inactiveColor: Color.fromRGBO(253, 240, 244, 1),
        ),
      ],
    );
  }
}
