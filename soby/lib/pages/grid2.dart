import 'package:flutter/material.dart';

class Gridtwo extends StatefulWidget {
  @override
  _GridtwoState createState() => _GridtwoState();
}

class _GridtwoState extends State<Gridtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 30),
        Text(
          "Quote of the day",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.grey[800]),
        ),
        SizedBox(height: 10),
        Icon(
          Icons.chat_bubble,
          size: 40,
          color: Colors.amber[300],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Cigarettes are just a classy way to commit suicide",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
        )
      ],
    ));
  }
}
