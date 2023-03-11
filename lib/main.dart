

import 'package:flutter/material.dart';


void main () {
  return runApp( const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Hellow World!"))
      ),
    );
  }
}