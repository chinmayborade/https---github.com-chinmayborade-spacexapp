import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
                  "lib/images/spacex3.jpg",
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          //text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Mission trackers to keep you in the loop",
              style: GoogleFonts.exo2(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          //textbutton
          TextButton(
            onPressed: () {
              //Navigate to home screen
            },
            child: Text(
              "Get Started",
              style: GoogleFonts.exo2(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
              iconSize: MaterialStateProperty.all<double>(40),
            ),
          )
        ],
      ),
    );
  }
}
