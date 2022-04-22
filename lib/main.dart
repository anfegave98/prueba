import 'package:flutter/material.dart';
import 'package:prueba/models/http_service.dart';
import 'package:prueba/ui/boxPerson.dart';
import 'package:prueba/ui/spinnerwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Users',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Users'), centerTitle: true),
        body: FutureBuilder(
          future: Db.getPosts(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var person = snapshot.data![index];
                  return boxPerson(person: person);
                },
              );
            } else {
              return SpinnerWidget();
            }
          },
        ));
  }
}
