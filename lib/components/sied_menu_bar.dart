import 'package:flutter/material.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            // child: RiveAnimation.asset(
            //   "assets/1298-2487-animated-icon-set-1-color.riv",
            //   artboard: "HOME",
            // ),
          ),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
