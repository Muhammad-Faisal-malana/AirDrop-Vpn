import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home/home_screen_connected.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = "/intro";

  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = PageController();
  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  children: const [
                    PageContent(),
                    PageContent(
                      title: 'Up to 3 Times Faster',
                      description:
                          'You can increase the speed of your internet connection up to 3 times faster.',
                    ),
                    PageContent(
                      title: 'High Speed Server',
                      description:
                          'We have one of the best server and with high speed connection.',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AnimatedSmoothIndicator(
                activeIndex: activePage,
                count: 3,
                onDotClicked: (index) {},
                effect: const ExpandingDotsEffect(
                    dotHeight: 6,
                    dotWidth: 10,
                    activeDotColor: Color(0xFF3524FF)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: InkWell(
                  onTap: () {
                    if (activePage == 2) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreenConnected()));
                    } else {
                      pageController.nextPage(
                          duration: Durations.medium1,
                          curve: Curves.bounceInOut);
                    }
                  },
                  child: Container(
                      height: 57,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, -0.06),
                          end: Alignment(-1, 0.06),
                          colors: [Color(0xFFFF6464), Color(0xFF3524FF)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x0C635757),
                            blurRadius: 75,
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Text(
                        (activePage == 0 || activePage == 1)
                            ? 'Next'
                            : 'Get Started',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  const PageContent({super.key, this.image, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SvgPicture.asset(image ?? 'assets/svg/intro-img.svg'),
        const SizedBox(height: 20),
        Text(
          title ?? '100% Safe and Secured',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF313338),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          description ??
              'Your data is absolutely safe because we encrypt all the data that linked.',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0x99323438),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
