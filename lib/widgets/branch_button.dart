import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BranchButton extends StatelessWidget {
  BranchButton({required this.branch});

  String branch;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            branch,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "Cairo",
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            width: 250,
          ),
          Icon(
            Icons.house_outlined,
            color: Colors.black,
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: StadiumBorder(),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
