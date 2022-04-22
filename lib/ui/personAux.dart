import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:prueba/models/person.dart';

class personAux extends StatelessWidget {
  Person person;

  personAux({required this.person}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User page'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 300,
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(this.person.picture.large)),
                      shape: BoxShape.circle,
                    ),
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  Text(
                    'Perfil',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nombre: ' +
                        this.person.name.first +
                        ' ' +
                        this.person.name.last),
                    Text('Edad: ' + this.person.dob.age.toString()),
                    Text('Nacimiento: ' + this.person.dob.date),
                    Text(
                      'Genero: ' + this.person.gender,
                      textAlign: TextAlign.left,
                    ),
                    Text('Email: ' + this.person.email),
                    Text('Telefono: ' + this.person.phone),
                    Text('Celular: ' + this.person.cell)
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              child: Card(
                elevation: 5,
                margin: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Ciudad: ' + this.person.location.city),
                    Text('Estado: ' + this.person.location.state),
                    Text('Pais: ' + this.person.location.country),
                    Text('Codigo postal: ' +
                        this.person.location.postcode.toString()),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
