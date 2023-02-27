import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: Image.asset('assets/3.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Discover the power of greenery, with our app',
            style: GoogleFonts.quicksand(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600]),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Buy your favourite mini, large or rare indoor plants.',
            style: GoogleFonts.quicksand(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.grey[400],
            ),
          ),
        ),
      ],
    );
  }
}
