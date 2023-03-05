import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.onChanged});
  Function(String)? onChanged;
  String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hoverColor: Colors.red,
            hintText: hintText,
            hintStyle: TextStyle(
              fontStyle: FontStyle.italic,
              color: Color(0xff6a6a6a),
              fontSize: 16,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            )),
      ),
    );
  }
}
