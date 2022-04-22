import 'package:flutter/cupertino.dart';
import 'package:prueba/models/person.dart';

class People {
  People();

  static List<Person> fromJsonList(List<dynamic> jsonList) {
    List<Person> listPerson = [];
    if (jsonList != null) {
      for (var i in jsonList) {
        final person = Person.fromJson(i);
        listPerson.add(person);
      }
    }
    return listPerson;
  }
}
