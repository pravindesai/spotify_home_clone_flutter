import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 6,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Text(
                  "Good Morning !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ))),
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ))),
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))),
      ],
    );
  }
}
