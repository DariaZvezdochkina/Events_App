import 'package:events_app/src/core/utils/extensions/build_context_extension.dart';
import 'package:events_app/src/features/presentation/widgets/dot_indicator_widget.dart';
import 'package:events_app/src/features/presentation/widgets/events_program_form.dart';
import 'package:events_app/src/features/presentation/widgets/notification_center_form.dart';
import 'package:events_app/src/features/presentation/widgets/unique_services_form.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/routes.dart';
import '../widgets/button_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int totalPageCount = 3;
  int activePageIndex = NumberConstants.zero;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  bool get isPageViewInLastPage => activePageIndex == (totalPageCount - 1);

  void goToNextPage() {
    context.requestFocus();

    _pageController.nextPage(
      duration: const Duration(milliseconds: NumberConstants.animationDuration),
      curve: Curves.easeOut,
    );
  }

  void goToPreviousPage() {
    context.requestFocus();

    _pageController.previousPage(
      duration: const Duration(milliseconds: NumberConstants.animationDuration),
      curve: Curves.easeOut,
    );
  }

  DecorationImage getBackgroundImage() {
    if (activePageIndex == 0) {
      return const DecorationImage(
        image: AssetImage('assets/images/main_screen_1.jpeg'),
        fit: BoxFit.cover,
      );
    } else if (activePageIndex == 1) {
      return const DecorationImage(
        image: AssetImage('assets/images/main_screen_2.jpeg'),
        fit: BoxFit.cover,
      );
    } else {
      return const DecorationImage(
        image: AssetImage('assets/images/main_screen_3.jpeg'),
        fit: BoxFit.cover,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (activePageIndex > 0 && !isPageViewInLastPage) {
          goToPreviousPage();

          return false;
        }

        return true;
      },
      child: GestureDetector(
        onTap: () => context.requestFocus(),
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: getBackgroundImage(),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: const [
                        0.00,
                        0.09,
                        0.19,
                        0.28,
                        0.38,
                        0.48,
                        0.57,
                        0.66,
                        0.74,
                        0.81,
                        0.88,
                        0.93,
                        0.97,
                        0.99,
                        1.00,
                      ],
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.02),
                        Colors.black.withOpacity(0.05),
                        Colors.black.withOpacity(0.12),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.29),
                        Colors.black.withOpacity(0.39),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.61),
                        Colors.black.withOpacity(0.71),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.88),
                        Colors.black.withOpacity(0.95),
                        Colors.black.withOpacity(0.98),
                        Colors.black,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 32),
                    child: Column(
                      children: [
                        const SizedBox(height: 13),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (activePageIndex == 0 || activePageIndex == 1)
                              ButtonWidget(
                                backgroundColor: const Color.fromRGBO(242, 243, 245, 0.40),
                                textColor: Colors.white,
                                callback: () {
                                  Navigator.pushNamed(context, Routes.home);
                                },
                                text: 'Пропустить',
                              ),
                          ],
                        ),
                        Expanded(
                          child: PageView(
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                activePageIndex = index;
                              });
                            },
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              UniqueServicesForm(
                                onNextStepPressed: () {
                                  goToNextPage();
                                },
                              ),
                              NotificationCenterForm(
                                onNextStepPressed: () {
                                  goToNextPage();
                                },
                              ),
                              const EventsProgramForm()
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        DotIndicator(
                          pageCount: totalPageCount,
                          activeIndex: activePageIndex,
                          color: const Color(0xFFC60033),
                          inactiveColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 32,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
