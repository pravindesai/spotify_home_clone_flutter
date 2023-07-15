import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:spotify_home_clone_flutter/network/model/person.dart';

class ApiService {
  Future<Person> getCurrentProfile() async {
    String baseUrl = "https://reqres.in/api/users/";
    String userId = Random(2).nextInt(10).toString();
    try {
      var url = Uri.parse(baseUrl + userId);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Person person = Person.fromJson(jsonDecode(response.body));
        return person;
      }
    } catch (e) {
      print(e);
    }

    return Person();
  }
}
