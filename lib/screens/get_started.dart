import 'package:ai_camera/constants.dart';
import 'package:ai_camera/screens/login_screen.dart';
import 'package:ai_camera/screens/register_screen.dart';
import 'package:ai_camera/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  GetStarted({super.key});

  String id = 'getstarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  "LET’S GET STARTED",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                CarouselWithIndicatorDemo(),

                // CarouselSlider(
                //   options: CarouselOptions(height: 400.0),
                //   items: [1,2,3,4,5].map((i) {
                //     return Builder(
                //       builder: (BuildContext context) {
                //         return Container(
                //             width: MediaQuery.of(context).size.width,
                //             margin: EdgeInsets.symmetric(horizontal: 5.0),
                //             decoration: BoxDecoration(
                //                 color: Colors.amber
                //             ),
                //             child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                //         );
                //       },
                //     );
                //   }).toList(),
                // ),

                SizedBox(
                  height: 110,
                ),
                MaterialButton(
                  color: const Color(0xFFFFAA00),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen().id);
                  },
                  height: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    alignment: Alignment.center,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 30),
                    ),
                  ),
                ),
                // GestureDetector(
                //     onTap: () {
                //       Navigator.pushNamed(context, LoginScreen().id);
                //     },
                //     child: CustomButton(text: 'Login ')),
                SizedBox(
                  height: 18,
                ),

                MaterialButton(
                  color: const Color(0xFFFFAA00),
                  onPressed: () {
                    Navigator.of(context).pushNamed(RegsiterScreen().id);
                  },
                  height: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),

                // GestureDetector(
                //   onTap: () {
                //     Navigator.of(context).pushNamed(RegsiterScreen().id);
                //   },
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: 40,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(30),
                //       color: Colors.green,
                //     ),
                //     child: Text(
                //       'Sign up',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         decorationThickness: 0.5,
                //         fontSize: 30,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}

// SafeArea(
// child: SingleChildScrollView(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// "LET’S GET STARTED",
// style: TextStyle(
// fontSize: 30,
// color: Colors.white,
// ),
// ),
// SizedBox(
// height: 50,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// // SizedBox(
// //   width: 100,
// // ),
// Container(
// width: 634,
// height: 275,
// child: FlutterLogo(size: 275),
// ),
// ],
// ),
// SizedBox(
// height: 50,
// ),
// GestureDetector(
// onTap: () {
// Navigator.pushNamed(context, LoginScreen().id);
// },
// child: CustomButton(text: 'Login ')),
// SizedBox(
// height: 30,
// ),
// GestureDetector(
// onTap: () {
// Navigator.of(context).pushNamed(RegsiterScreen().id);
// },
// child: Container(
// width: 217,
// height: 40,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(30),
// color: Colors.green,
// ),
// child: Text(
// 'Sign up',
// textAlign: TextAlign.center,
// style: TextStyle(
// decorationThickness: 0.5,
// fontSize: 30,
// color: Colors.white,
// ),
// ),
// ),
// )
// ],
// ),
// ),
// )

final List<Widget> tips = [
  SlideTip(
      image: "assets/images/forgot-password.png",
      text: "Monitor your work remotely"),
  SlideTip(
      image: "assets/images/forgot-password.png",
      text: "Monitor your work remotely"),
  SlideTip(
      image: "assets/images/forgot-password.png",
      text: "Monitor your work remotely"),
];

class SlideTip extends StatelessWidget {
  SlideTip({required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(image),
        ),
        SizedBox(
          height: 10,
          width: MediaQuery.of(context).size.width,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 24),
        )
      ],
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: tips,
          carouselController: _controller,
          options: CarouselOptions(
              //height: 400,
              autoPlay: true,
              aspectRatio: 1.4,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tips.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.light
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
