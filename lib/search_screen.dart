import 'package:flutter/material.dart';
import 'package:spotify_home_clone_flutter/NetworkData.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  String filterKey = "";
  List<Album> allAlbums = DatasSource.albums;
  List<Album> filteredAlbums = DatasSource.albums;

  void filterBy() {
    setState(() {
      filteredAlbums.clear();
      allAlbums.forEach((element) {
        if (element.name.contains(filterKey)) {
          filteredAlbums.add(element);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.transparent,
        height: height,
        width: width,
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: filteredAlbums.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.all(2),
                child: Card(
                  borderOnForeground: false,
                  shadowColor: Colors.grey,
                  elevation: 0.8,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(filteredAlbums.elementAt(index).name,
                        style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                        )),
                  ),
                ));
          },
        ));
  }
}
