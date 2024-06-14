import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/images/spacex2.jpg",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          //Text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Get Information And Updates On Various Spaceships ",
              style: GoogleFonts.exo2(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ), //text
            ),
          ),

          SizedBox(height: 20),

          //swipe textarrow
          Text(
            "Swipe >>>",
            style: GoogleFonts.exo2(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
