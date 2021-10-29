import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Container(
        child: ElevatedButton(onPressed: () {}, child: Text('Back')),
      ),
    )));
  }
}
