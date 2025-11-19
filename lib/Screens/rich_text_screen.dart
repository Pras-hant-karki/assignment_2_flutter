import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("Rich Text Screen")),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [Container(
          color: Colors.blueGrey,
          width: 300,
          child: const Text(
          "Hello World",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        ),
        Container(
          color: Colors.blueGrey,
          width: 300,
          child: const Text(
          "My name is Prashant Karki",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,

          ),
        ),
        ),
        Container(
          color: Colors.blueGrey,
          width: 300,
          child: RichText(
            text: const TextSpan(
              text: 'Hello ',
              style: TextStyle(
                color: Colors.black12,
                fontSize: 30,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'bold',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                TextSpan(
                  text: ' World',
                ),
              ]
            ))
        )],
      ),
      );
  }
}