// import 'dart:html';

import 'package:ai_camera/widgets/branch_button.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BranchesScreen extends StatelessWidget {
  BranchesScreen({super.key});

  String id = 'BranchesScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Welcome Back !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Choose the branch",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Cairo",
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            BranchButton(
              branch: 'Branch 1',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 2',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 3',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 3',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 4',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 5',
            ),
            SizedBox(height: 25),
            BranchButton(
              branch: 'Branch 6',
            ),
          ],
        ),
      ),
    );
  }
}
