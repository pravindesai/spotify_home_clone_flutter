import 'package:flutter/material.dart';

class PodCastItem extends StatelessWidget {
  const PodCastItem(this.title, this.imgUrl, {super.key});

  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: const EdgeInsets.all(3),
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          shadowColor: const Color.fromARGB(255, 212, 212, 212),
          elevation: 3,
          margin: const EdgeInsets.all(3),
          color: Colors.blue[400],
          child: SizedBox(
            height: 80,
            width: 80,
            child: Stack(
              children: [
                FadeInImage(
                  image: NetworkImage(
                      "https://flutterawesome.com/assets/favicon.png"),
                  placeholder: const AssetImage("images/spotify.png"),
                  imageErrorBuilder: (context, error, stackTrace) {
                    return Image.asset('images/spotify.png',
                        fit: BoxFit.fitWidth);
                  },
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
