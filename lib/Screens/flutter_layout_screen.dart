import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text(
              "Flutter Layout Screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),

          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

      body: Padding(padding: EdgeInsets.all(11), 
      child: Column(
        children: 
        
        //...............FIRST Box...........
        [Container(
          height: 110,
          width: 1500,

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black87,
              width: 3,
            ),
          ),

          child: Padding(padding: EdgeInsetsGeometry.all(10),
          child: Row(
            children: [
              SizedBox(width: 12),
              Column(
                children: [
                  Icon(
                    Icons.call,
                    size: 50,
                    color: Colors.redAccent,
                  ),

                  Text("Call", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),

              SizedBox(width: 12),
              Column(
                children: [
                  Icon(
                    Icons.send,
                    size: 50,
                    color: Colors.redAccent,
                  ),

                  Text("Send", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),

              SizedBox(width: 12),
              Column(
                children: [
                  Icon(
                    Icons.block,
                    size: 50,
                    color: Colors.redAccent,
                  ),

                  Text("Block", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),

              SizedBox(width: 12),
              Column(
                children: [
                  Icon(
                    Icons.e_mobiledata,
                    size: 50,
                    color: Colors.redAccent,
                  ),

                  Text("M Data", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),

              SizedBox(width: 12),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 50,
                    color: Colors.redAccent,
                  ),

                  Text("Share", style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    ),
                  ),
                ],
              )
            ],
            )
        ),
        ),

        //....................SECOND Box............
        Container(
          height: 110,
          width: 1500,

          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black87,
              width: 3,
            ),
          ),

          // child: Padding(padding: EdgeInsetsGeometry.all(10)),
          // child: Row(
          //   children: [
          //     SizedBox(width: 12),
          //     Column(
          //       icon: 
          //     )
            // ],
          )
        ]
      ),
      ),
    );
  }
} 

// use 2 "spacer" for space