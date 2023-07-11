import 'package:flutter/material.dart';
import 'package:spotify_home_clone_flutter/HomeHeader.dart';
import 'package:spotify_home_clone_flutter/PodCastItem.dart';
import 'package:spotify_home_clone_flutter/Radio.dart';
import 'package:spotify_home_clone_flutter/TopRecomendedCard.dart';
import 'package:spotify_home_clone_flutter/NetworkData.dart';
import 'package:spotify_home_clone_flutter/NewSongCard.dart';
import 'package:spotify_home_clone_flutter/PodCasts.dart';

class FlutterHome extends StatefulWidget {
  const FlutterHome({super.key});

  @override
  State<StatefulWidget> createState() => _FlutterHomeState();
}

class _FlutterHomeState extends State<FlutterHome> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 124, 124, 124),
            items: const [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: "Library",
                  icon: Icon(
                    Icons.library_books,
                    color: Colors.white,
                  ))
            ],
          )),
      body: Container(
        height: _height,
        color: const Color.fromARGB(221, 0, 0, 0),
        child: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(7.0),
              child: Column(
                children: <Widget>[
                  const Header(),
                  const TopRecomended(),
                  const NewSongAddedContainer(),
                  const NewSongCard(),
                  const PodCasts(),
                  SizedBox(
                    width: _width,
                    child: Container(
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(1.0),
                              child: Column(children: <Widget>[
                                Row(
                                  children: DatasSource.podcasts
                                      .map((e) => PodCastItem(e.name, e.imgUrl))
                                      .toList(),
                                )
                              ]))),
                    ),
                  ),
                  const RadioCard(),
                  SizedBox(
                    width: _width,
                    child: Container(
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(1.0),
                              child: Column(children: <Widget>[
                                Row(
                                  children: DatasSource.radio
                                      .map((e) => PodCastItem(e.name, e.imgUrl))
                                      .toList(),
                                )
                              ]))),
                    ),
                  )
                ],
              )),
        ),
      ),
    ));
  }
}
