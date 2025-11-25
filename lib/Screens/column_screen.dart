import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Column Screen'),
          
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            TextButton(onPressed: () {}, child: const Text('Forgot Password')),
            ElevatedButton(onPressed: () {}, child: const Text('Log In')),
            OutlinedButton(onPressed: () {}, child: const Text('Sign Up')),
          ],
        ),
        // color: Colors.amber,
        // child: Column(
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,

        //   children: const [
        //     Icon(Icons.star, size: 50),
        //     Column(
        //       // mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Icon(Icons.star, size: 50),
        //         Icon(Icons.star, size: 50),
        //       ]  
        //     )
        //   ],
        // ),
      ),
    );
  }
}