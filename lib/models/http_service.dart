import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prueba/models/person.dart';
import 'package:prueba/models/people.dart';

class Db {
  static final String postsURL = "https://randomuser.me/api";

  static Future<List<Person>> getPosts() async {
    var url = postsURL + "/?results=15";
    final resp = await http.get(Uri.parse(url));
    if (resp.statusCode == 200) {
      final respJSON = json.decode(resp.body);
      final perfil = People.fromJsonList(respJSON['results']);
      return perfil;
    }
    return <Person>[];
  }
}
