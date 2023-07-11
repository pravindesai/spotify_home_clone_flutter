import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_home_clone_flutter/FlutterHome.dart';

void main() {

  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return MaterialApp(
      title: "Flutter Clone",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FlutterHome(),
    );
  }
}
