import 'package:flutter/material.dart';

class PodCasts extends StatelessWidget {
  const PodCasts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  "Podcasts for you",
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

