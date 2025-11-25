import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Screen"),
        backgroundColor: Colors.amberAccent,
      ),
    body: 
    // Center(
    //   body: Container(
    //     height: 200,
    //     width: 200,
    //     alignment: Alignment.center,
    //     // alignment: Alignment.topRight,
        
    //     child: Text("I am a container"),
    //     decoration:BoxDecoration(
    //       color: Colors.grey,
    //       // shape: BoxShape.rectangle,
    //       shape: BoxShape.circle,
    //       border: Border.all(
    //         color: Colors.black,
    //         width: 2,
    //       )
    //     )
    //   ),
    Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.centerRight,
        // alignment: Alignment.topRight,
        
        child: Text("Hello"),
        )
      );
  }
}