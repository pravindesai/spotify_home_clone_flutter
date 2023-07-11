class Podcast {
  final String name;
  final String imgUrl;
  Podcast(this.name, this.imgUrl);
}

class DatasSource {
  static var podcasts = [
    Podcast(
        "Freakonomics Radio", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("ZED Talks ", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Bunch Podcast", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Extra Napkins Podcast",
        "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Reply All", "https://flutterawesome.com/assets/favicon.png"),
    Podcast(
        "The Self Love Fix", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("The Trash Rats's Podcast",
        "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Anything is Poddable ",
        "https://flutterawesome.com/assets/favicon.png"),
  ];

  static var radio = [
    Podcast("Radio Cult", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Morning FM ", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Bunch Podcast", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("On The Air", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Ping It Radio", "https://flutterawesome.com/assets/favicon.png"),
    Podcast("Dark Channel", "https://flutterawesome.com/assets/favicon.png"),
  ];
}
