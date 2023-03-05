import 'package:ai_camera/constants.dart';
import 'package:ai_camera/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegsiterScreen extends StatelessWidget {
  RegsiterScreen({super.key});

  String? email;
  String? password;
  String id = 'registerscreen';

  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(children: [
            SizedBox(height: 70),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Sign Up ",
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
                SizedBox(width: 10),
                Text(
                  "Please fill your account info below to access\nyour system",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CustomTextField(
              onChanged: (data) {
                email = data;
              },
              hintText: 'username or e_mail ',
            ),
            CustomTextField(
              onChanged: (data) {
                password = data;
              },
              hintText: 'password ',
            ),
            SizedBox(
              height: 7,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onTap: () async {
                    try {
                      // var auth = FirebaseAuth.instance;
                      await registerUser();
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        //print('The password provided is too weak.');
                        showSnackBar(
                            context, 'The password provided is too weak');
                      } else if (e.code == 'email-already-in-use') {
                        //print('The account already exists for that email.');

                        showSnackBar(context, ' E_MAIL is already exits.');
                      }
                    } catch (e) {
                      showSnackBar(context, 'There is an error ');
                    }

                    showSnackBar(context, 'you are successfully registered.');
                  },
                  text: 'Sumbit',
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' Already have account ',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        // Navigator.pushNamed(context, 'loginScreen');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xffffaa00),
                        ),
                      ),
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
          ]),
        ));
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}



 //     Row(
                //       children: [
                //         Checkbox(
                //           focusColor: Colors.white,
                //           checkColor: Colors.white,
                //           activeColor: Colors.green,
                //           value: isRemberMe,
                //           onChanged: (value) {
                //             setState(() {
                //               isRemberMe = !isRemberMe!;
                //             });
                //           },
                //         ),
                //         Text(
                //           'rember me ',
                //           style: TextStyle(
                //             fontSize: 20,
                //             color: Color(0xff6a6a6a),
                //           ),
                //         )
                //       ],
                //     ),
                //     TextButton(
                //         onPressed: () {},
                //         child: Text(
                //           'forgot your password ?',
                //           style: TextStyle(
                //             fontSize: 18,
                //             color: Color(0xff6a6a6a),
                //           ),
                //         ))
                //   ],
                // ),