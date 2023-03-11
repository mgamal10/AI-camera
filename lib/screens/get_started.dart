import 'package:ai_camera/constants.dart';
import 'package:ai_camera/screens/login_screen.dart';
import 'package:ai_camera/screens/register_screen.dart';
import 'package:ai_camera/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStarted extends StatelessWidget {
  GetStarted({super.key});

  String id = 'getstarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Let's get started ",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
              ),
              Container(
                width: 634,
                height: 275,
                child: FlutterLogo(size: 275),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen().id);
              },
              child: CustomButton(text: 'Login ')),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(RegsiterScreen().id);
            },
            child: Container(
              width: 217,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decorationThickness: 0.5,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],

        //Hi there
      ),
    );
  }
}
