import 'dart:ui';

import 'package:ai_camera/constants.dart';
import 'package:ai_camera/screens/register_screen.dart';
import 'package:ai_camera/widgets/custom_button.dart';
import 'package:ai_camera/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen();
  //this.isRemberMe
  String id = 'loginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  bool? isRemberMe = false;
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isRemberMe = false;

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
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.33),
            Row(
              children: [
                Text(
                  "Please fill your account info below to access\nyour system",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.33),
            Container(
              width: 321,
              height: 165,
              child: FlutterLogo(size: 165),
            ),

            SizedBox(height: 24),

            CustomTextField(
              hintText: '   username or e_mail ',
            ),
            SizedBox(
              height: 7,
            ),
            CustomTextField(
              hintText: '  password ',
            ),
            SizedBox(
              height: 7,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      focusColor: Colors.white,
                      checkColor: Colors.white,
                      activeColor: Colors.green,
                      value: isRemberMe,
                      onChanged: (value) {
                        setState(() {
                          isRemberMe = !isRemberMe!;
                        });
                      },
                    ),
                    Text(
                      'RemberMe ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff6a6a6a),
                      ),
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgot your password ?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff6a6a6a),
                      ),
                    ))
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 170,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffffaa00),
                  ),
                  child: Text('login ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decorationThickness: 0.5,
                        fontSize: 30,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            // CustomButton(
            //   text: 'login',
            // ),

            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\t have an acccount ? ',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                GestureDetector(
                  onTap: () {
                    //  Navigator.pushNamed(context, RegsiterScreen().id);
                    Navigator.of(context).pushNamed(RegsiterScreen().id);
                  },
                  child: Text(
                    'Sign UP',
                    style: TextStyle(
                      color: Color(0xffffaa00),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )

            // TextField(
            //   decoration: InputDecoration(
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //     color: Colors.white,
            //   ))),
            // ),
          ],
        ),
      ),
    );
  }
}
