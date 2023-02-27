import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/slides%20pages/first_page.dart';
import 'package:weather_app/slides%20pages/second_page.dart';
import 'package:weather_app/slides%20pages/third_page.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  final _controller = PageController();

  SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                    height: 80,
                    child: Image.asset('assets/plant.png'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      'Skip',
                      style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF83BFB1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 520,
              child: PageView(
                controller: _controller,
                children: const [
                  FirstPa(),
                  SecondPage(),
                  ThirdPage(),
                ],
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                axisDirection: Axis.horizontal,
                controller: _controller,
                count: 3,
                effect: const JumpingDotEffect(
                  activeDotColor: Color(0xff2fcba7),
                  dotWidth: 60,
                  dotHeight: 8,
                  spacing: 20,
                  dotColor: Color(0xFFD4D5D5),
                ),
              ),
            ),
            const SizedBox(height: 35),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Stack(
                  alignment: const Alignment(0, 0),
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff2fcba7).withOpacity(0.3)),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff2fcba7)),
                      child: const Icon(
                        Icons.chevron_right,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
