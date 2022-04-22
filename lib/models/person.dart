import 'package:flutter/foundation.dart';
import 'package:prueba/main.dart';

class Person {
  String gender;
  Name name;
  Location location;
  String email;
  Dob dob;
  String phone;
  String cell;
  Picture picture;

  Person(
      {required this.gender,
      required this.name,
      required this.location,
      required this.email,
      required this.dob,
      required this.phone,
      required this.cell,
      required this.picture});

  static Person fromJson(Map<String, dynamic> json) {
    return Person(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      email: json['email'] as String,
      dob: Dob.fromJson(json['dob']),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      picture: Picture.fromJson(json['picture']),
    );
  }
}

class Name {
  String title;
  String first;
  String last;

  Name({required this.title, required this.first, required this.last});

  static Name fromJson(Map<String, dynamic> json) {
    return Name(
        title: json['title'] as String,
        first: json['first'] as String,
        last: json['last'] as String);
  }
}

class Dob {
  String date;
  int age;

  Dob({required this.date, required this.age});

  static Dob fromJson(Map<String, dynamic> json) {
    return Dob(date: json['date'] as String, age: json['age'] as int);
  }
}

class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  static Picture fromJson(Map<String, dynamic> json) {
    return Picture(
        medium: json['medium'] as String,
        thumbnail: json['thumbnail'] as String,
        large: json['large'] as String);
  }
}

class Location {
  String city;
  String state;
  String country;
  var postcode;

  Location(
      {required this.city,
      required this.country,
      required this.state,
      required this.postcode});
  static Location fromJson(Map<String, dynamic> json) {
    return Location(
        city: json['city'] as String,
        state: json['state'] as String,
        country: json['country'] as String,
        postcode: json['postcode']);
  }
}
