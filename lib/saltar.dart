import 'package:flutter/material.dart';
import 'package:proyectofinal/screens/ReadJson.dart';

class saltar extends StatelessWidget {
  const saltar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBarExample(),
        routes: <String, WidgetBuilder>{
          "/leer":(BuildContext context) => ReadJson()

        }
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final btnleer = new ElevatedButton(
      child: Text("Leer"),
      style: ElevatedButton.styleFrom(
        primary: Colors.purple,
        onPrimary: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
        minimumSize: Size(150, 60), //////// HERE
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/leer");
        print("Leer Json");
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leer Json'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: Center(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[btnleer
                  ],
                ),
          )),
    );
  }
}
