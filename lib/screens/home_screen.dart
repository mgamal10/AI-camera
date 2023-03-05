import 'package:ai_camera/components/utilits/rive_utlitis.dart';
import 'package:ai_camera/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SMIBool userTigger;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.8),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                bottomNavs.length,
                (index) => GestureDetector(
                  onTap: () {
                    bottomNavs[index].input!.change(true);
                    Future.delayed(Duration(seconds: 1), () {
                      bottomNavs[index].input!.change(false);
                    });
                  },
                  child: SizedBox(
                      height: 36,
                      width: 36,
                      child: RiveAnimation.asset(
                        bottomNavs.first.src,
                        artboard: bottomNavs[index].artboard,
                        onInit: (artboard) {
                          StateMachineController controller =
                              RiveUtils.getRiveController(artboard,
                                  StateMachineName:
                                      bottomNavs[index].StateMachineName);
                          bottomNavs[index].input =
                              controller.findSMI('active') as SMIBool;
                        },
                      )),
                ),
              )
            ],
          ),
        ),
      ),

      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      //   child: GNav(
      //     backgroundColor: Color(0xff0d1b3b),
      //     gap: 8,
      //     color: Colors.white,
      //     activeColor: Colors.white,
      //     tabBackgroundColor: Colors.lightGreen,
      //     tabs: [
      //       GButton(
      //         icon: Icons.person,
      //         text: 'empolyees',
      //         textColor: Colors.white,
      //       ),
      //       GButton(
      //         icon: Icons.notifications,
      //         text: 'Daily reports',
      //         textColor: Colors.white,
      //       ),
      //       GButton(
      //         icon: Icons.play_arrow,
      //         text: 'Stream',
      //         textColor: Colors.white,
      //       ),
      //       GButton(
      //         icon: Icons.analytics,
      //         text: 'Analytics',
      //         textColor: Colors.white,
      //       ),
      //       GButton(
      //         icon: Icons.settings,
      //         text: 'Settings',
      //         textColor: Colors.white,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class RiveAsset {
  final String artboard, StateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.artboard,
      required this.StateMachineName,
      required this.title,
      this.input});

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset(
    'assets/icons (2).riv',
    artboard: 'USER',
    StateMachineName: 'USER_Interactivity',
    title: 'Empolyee',
  ),
  RiveAsset('assets/icons (2).riv',
      artboard: 'BELL',
      StateMachineName: 'BELL_Interactivity',
      title: 'Daily Reports'),
  RiveAsset('assets/icons (2).riv',
      artboard: 'PLAY/PAUSE',
      StateMachineName: 'State Machine 1',
      title: 'Stream'),
  RiveAsset('assets/icons (2).riv',
      artboard: 'RULES',
      StateMachineName: 'State Machine 1',
      title: 'Empolyee'),
  RiveAsset('assets/icons (2).riv',
      artboard: 'SETTINGS',
      StateMachineName: 'SETTINGS_Interactivity',
      title: 'Settings'),
];
