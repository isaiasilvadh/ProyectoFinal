import 'dart:html';

import 'package:flutter/material.dart';
import 'package:proyectofinal/Splash.dart';
import 'package:flutter/services.dart';
import 'package:proyectofinal/saltar.dart';
import 'package:proyectofinal/screens/ReadJson.dart';
import 'package:proyectofinal/tutorial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '4 Pets',
        home: Splash(),
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        routes: <String, WidgetBuilder>{
          "/inicio": (BuildContext context) => login(),
          "/tutorial":(BuildContext context) => tutorial(),
          "/saltar":(BuildContext context) => saltar(),
          "/leer":(BuildContext context) => ReadJson(),

        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final button1 = new ElevatedButton(
      child: Text("Tutorial"),
      style: ElevatedButton.styleFrom(
          primary: Colors.yellow,
          onPrimary: Colors.black,
          elevation: 10,
          shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
        minimumSize: Size(150, 60), //////// HERE
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/tutorial");
        print("Ir al Login");
      },
    );
    final button2 = new ElevatedButton(
      child: Text("Saltar Tutorial"),
      style: ElevatedButton.styleFrom(
        primary: Colors.yellow,
        onPrimary: Colors.black,
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
        minimumSize: Size(150, 60), //////// HERE
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/saltar");
        print("Saltar Tutorial ");
      },
    );

    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1510771463146-e89e6e86560e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmxvciUyMGRlJTIwcGVycm98ZW58MHx8MHx8&w=1000&q=80"),
                fit: BoxFit.cover)),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [button1],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [button2],
            ),
            ]),
      )),
    );
  }
}
