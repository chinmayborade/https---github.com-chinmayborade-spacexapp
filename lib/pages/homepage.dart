import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacexapp/pages/intro_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
          child: Stack(
        children: <Widget>[
          //background image
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: 200.5,
                    image: AssetImage(
                      "lib/images/stars.jpg",
                    ),
                    fit: BoxFit.fitHeight)),
          ),

          //SpacexLogo
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 500.0, top: 130),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "lib/images/spacex_logo.png",
                      ),
                      fit: BoxFit.fitWidth)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 380.0, left: 20.0),
            child: Column(
              children: [
                //introduction text
                Text(
                  "lets get you to the moon",
                  style: GoogleFonts.exo2(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(255, 255, 255, 1)),
                ),

                SizedBox(height: 80),

                //button
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      iconSize: 48,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Intropage()));
                      }),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
