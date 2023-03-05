import 'package:ai_camera/screens/get_started.dart';
import 'package:ai_camera/screens/home_screen.dart';
import 'package:ai_camera/screens/login_screen.dart';
import 'package:ai_camera/screens/register_screen.dart';
import 'package:ai_camera/widgets/side_menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
    return MaterialApp(
      routes: {
        LoginScreen().id: (context) => LoginScreen(),
        RegsiterScreen().id: (context) => RegsiterScreen(),
        GetStarted().id: (context) => GetStarted(),
        SideMenu().id: (context) => SideMenu(),
        HomeScreen().id: (context) => HomeScreen(),
      },
      initialRoute: 'HomeScreen',
      debugShowCheckedModeBanner: false,
    );
  }
}
