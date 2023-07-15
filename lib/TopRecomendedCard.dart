import 'package:flutter/material.dart';

class TopRecomended extends StatelessWidget {
  const TopRecomended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.transparent,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(flex: 1, child: TopRecomendedCard("Discover \nWeekly")),
              Expanded(flex: 1, child: TopRecomendedCard("Chill Vibes"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(flex: 1, child: TopRecomendedCard("Tea Time")),
              Expanded(flex: 1, child: TopRecomendedCard("Power \nHouse"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(flex: 1, child: TopRecomendedCard("Daily Mix 1")),
              Expanded(flex: 1, child: TopRecomendedCard("Daily Mix 2"))
            ],
          )
        ],
      ),
    );
  }
}

class TopRecomendedCard extends StatelessWidget {
  const TopRecomendedCard(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          shadowColor: Colors.grey,
          elevation: 5,
          margin: const EdgeInsets.all(3),
          color: Colors.black,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: FadeInImage(
                    image: NetworkImage(
                        "https://flutterawesome.com/assets/favicon.png"),
                    placeholder: const AssetImage("images/spotify.png"),
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Image.asset('images/spotify.png',
                          fit: BoxFit.fitWidth);
                    },
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ))
            ],
          )),
    );
  }
}
