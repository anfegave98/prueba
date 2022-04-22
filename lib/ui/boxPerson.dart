import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prueba/models/person.dart';
import 'package:prueba/ui/personAux.dart';

class boxPerson extends StatelessWidget {
  Person person;

  boxPerson({required this.person});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network(this.person.picture.thumbnail),
            Text(this.person.name.title),
          ],
        ),
        title: new Center(
            child:
                new Text(this.person.name.first + " " + this.person.name.last)),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => personAux(person: this.person)));
        },
      ),
    );
  }
}
