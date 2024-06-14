import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spacexapp/pages/first_page.dart';
import 'package:spacexapp/pages/second_page.dart';
import 'package:spacexapp/pages/third_page.dart';

class Intropage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
              ],
            ),
          ),

          //dot indicatos
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ScaleEffect(
              offset: BorderSide.strokeAlignCenter,
              dotHeight: 10,
              activeDotColor: Colors.black54,
              dotColor: Colors.white,
              spacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
