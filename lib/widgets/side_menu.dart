import 'package:ai_camera/components/info_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../components/sied_menu_bar.dart';

class SideMenu extends StatefulWidget {
  SideMenu({super.key});

  String id = 'SideMenu';

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            children: [
              InfoCard(
                name: ' Mohamed gamal',
                profession: ' Hi There',
              ),
              SideMenuBar(),
            ],
          ),
        ),
      ),
    );
  }
}
