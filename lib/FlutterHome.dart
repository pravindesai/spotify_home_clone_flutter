import 'package:flutter/material.dart';
import 'package:spotify_home_clone_flutter/HomeScreen.dart';
import 'package:spotify_home_clone_flutter/library_screen.dart';
import 'package:spotify_home_clone_flutter/search_screen.dart';

class FlutterHome extends StatefulWidget {
  const FlutterHome({super.key});

  @override
  State<StatefulWidget> createState() => _FlutterHomeState();
}

class _FlutterHomeState extends State<FlutterHome> {
  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const SearchScreen(),
    const LibraryScreen(),
  ];

  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: selectedIndex,
            backgroundColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 124, 124, 124),
            items: const [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white60,
                  )),
              BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(
                    Icons.search,
                    color: Colors.white60,
                  )),
              BottomNavigationBarItem(
                  label: "Library",
                  icon: Icon(
                    Icons.library_books,
                    color: Colors.white60,
                  ))
            ],
          )),
      body: Container(
        height: height,
        color: const Color.fromARGB(221, 0, 0, 0),
        child: SingleChildScrollView(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: <Widget>[_widgetOptions.elementAt(selectedIndex)],
              )),
        ),
      ),
    ));
  }
}
