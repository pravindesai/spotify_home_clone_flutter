import 'package:flutter/material.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  "Radio",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                )),
          ],
        )
      ],
    );
  }
}

