import 'package:flutter/material.dart';

class tutorial extends StatelessWidget {
  const tutorial({super.key});

  static const String _title = 'Tutorial de uso del aplicativo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: SelectionArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('Primer paso'),
                SelectionContainer.disabled(child: Text('Acceder a la aplicación')),
                Text('Segundo paso'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
