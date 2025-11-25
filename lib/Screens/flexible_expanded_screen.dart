import 'package:assignment_2_flutter/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Expand Screen"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () =>showMySnackBar(
                context: context,
                message: "This is container1"
              ),
              child: Container(
                // height: 300,
                width: double.infinity,
                color: Colors.amber,
                child: Text("Container 1"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            // fit: FlexFit.loose,
            // fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () => showMySnackBar(
                context: context,
                message: "This is container2"
              ),
              child: Container(
                // height: 300,
                width: double.infinity,
                color: Colors.pink,
                child: Text("Container 2"),
              ),
            ),
          )
        ]
      ),
    );
  }
}