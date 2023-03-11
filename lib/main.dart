import 'package:ai_camera/screens/get_started.dart';
import 'package:ai_camera/screens/home_screen.dart';
import 'package:ai_camera/screens/login_screen.dart';
import 'package:ai_camera/screens/register_screen.dart';
import 'package:ai_camera/widgets/side_menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
//import 'dart:html';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(AiCamera());
}

class AiCamera extends StatelessWidget {
  AiCamera({super.key});

  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //   theme: ThemeData(
    //       fontFamily: 'cairo'
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: Sizer(builder: (ctx, or, de) {
    //     return  GetStarted();
    //   },
    //   ),
    // );


    return MaterialApp(
        theme: ThemeData(
            fontFamily: 'cairo'
        ),
      routes: {
        LoginScreen().id: (context) => LoginScreen(),
        RegsiterScreen().id: (context) => RegsiterScreen(),
        GetStarted().id: (context) => GetStarted(),
        SideMenu().id: (context) => SideMenu(),
        HomeScreen().id: (context) => HomeScreen(),
      },
      initialRoute: 'getstarted',
      debugShowCheckedModeBanner: false,
    );
  }
}
