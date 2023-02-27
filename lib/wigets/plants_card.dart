import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/pages/details_page.dart';

class PlantsCard extends StatelessWidget {
  final String image;
  final String plantsname;
  final String plantsloc;
  const PlantsCard(
      {super.key,
      required this.image,
      required this.plantsname,
      required this.plantsloc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: SizedBox(
          height: 250,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFCFF0E5),
                    ),
                    child: Image.asset(image),
                  ),
                  const Positioned(
                    left: 115,
                    top: 6,
                    child: Icon(
                      Icons.favorite_outline,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  plantsname,
                  style: GoogleFonts.quicksand(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF0E6551),
                  ),
                ),
              ),
              Text(
                plantsloc,
                style: GoogleFonts.quicksand(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
