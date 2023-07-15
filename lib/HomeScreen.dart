import 'package:flutter/material.dart';
import 'package:spotify_home_clone_flutter/NewSongCard.dart';
import 'package:spotify_home_clone_flutter/PodCastItem.dart';
import 'package:spotify_home_clone_flutter/PodCasts.dart';
import 'package:spotify_home_clone_flutter/Radio.dart';
import 'package:spotify_home_clone_flutter/TopRecomendedCard.dart';
import 'package:spotify_home_clone_flutter/network/NetworkData.dart';

import 'HomeHeader.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
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
    );
  }
}
