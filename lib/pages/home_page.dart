import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../wigets/plants_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.asset('assets/plant.png'),
                  ),
                  SizedBox(
                    height: 80,
                    child: Image.asset(
                      'assets/avatar.png',
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 280,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text(
                            'Search here....',
                            style: GoogleFonts.quicksand(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]),
                          ),
                        ),
                        Icon(
                          Icons.mic,
                          color: Colors.grey[500],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Icon(
                      Icons.tune,
                      color: Colors.grey[600],
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 120,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFCFF0E5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            '-30% on office \n plants',
                            style: GoogleFonts.quicksand(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: const Color(0xff2fcba7),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Shop Now",
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF29AF90),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 190,
                    bottom: 0,
                    child: Image.asset(
                      'assets/2.png',
                      height: 150,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'New plants',
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                  PlantsCard(
                    image: "assets/2.png",
                    plantsname: "Ardent Gardener Cast Iron Plant",
                    plantsloc: "Office Plants",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        buttonBackgroundColor: const Color(0xff2fcba7),
        color: const Color(0xff2fcba7),
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.local_mall,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
