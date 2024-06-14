import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //image of spaceship
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/images/spaceship.jpeg",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          Text(
            "Welcome To Space X",
            style: GoogleFonts.exo2(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 1,
              ),
            ),
          ),

          SizedBox(height: 25),

          //Swipe button
          Text("Swipe >>>",
              style: GoogleFonts.exo2(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              )),
        ],
      ),
    );
  }
}
