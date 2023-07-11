import 'package:flutter/material.dart';

class NewSongCard extends StatelessWidget {
  const NewSongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                      "https://concertstour.com/wp-content/uploads/2020/10/Eminem.jpg"),
                ),
                const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mockingbird -\n[official Music Album]",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            "-Song by Eminem",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      child: Icon(
                                        Icons.pause,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ))
                                ],
                              )),
                          SizedBox(height: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "More by eminem >> ",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }
}

class NewSongAddedContainer extends StatelessWidget {
  const NewSongAddedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(
                  "New song added",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ))),
      ],
    );
  }
}
