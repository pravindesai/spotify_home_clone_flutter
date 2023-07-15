import 'package:flutter/material.dart';
import 'package:spotify_home_clone_flutter/network/NetworkData.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SearchScreenState();
  }
}

class SearchScreenState extends State<SearchScreen> {
  TextEditingController editingController = TextEditingController();
  List<Album> allAlbums = DatasSource.albums;
  List<Album> filteredAlbums = DatasSource.albums;

  void filterSearchResults(String query) {
    setState(() {
      filteredAlbums = allAlbums
          .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
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
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 5.0),
              child: TextField(
                maxLines: 1,
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)))),
              ),
            ),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: filteredAlbums.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.all(0),
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
            ))
          ],
        ));
  }
}
