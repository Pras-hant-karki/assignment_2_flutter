import 'package:assignment_2_flutter/Screens/area_of_circle_screen.dart';
import 'package:assignment_2_flutter/Screens/arithmetic_screen.dart';
import 'package:assignment_2_flutter/Screens/armstrong_screen.dart';
import 'package:assignment_2_flutter/Screens/palindrome_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("Dashboard Screen", style: TextStyle(fontSize: 40))),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(21), 
        child: Column(
          // multi child
          children: [
            //Button1
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) => ArithmeticScreen(),));
              }, 
              child: Text("Arithmetic", style: TextStyle(fontSize: 35)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.black87,
              )),
            ),
            SizedBox(height: 20),
            //Button2
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) => AreaOfCircleScreen(),));
              }, 
              child: Text("Area of Circle", style: TextStyle(fontSize: 35)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.black87,
              )),
            ),
            SizedBox(height: 20),
            //Button3
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) => ArmstrongScreen(),));
              }, 
              child: Text("Armstrong Number", style: TextStyle(fontSize: 35)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.black87,
              )),
            ),
            SizedBox(height: 20),
            //Button4
            SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:(context) => PalindromeScreen(),));
              }, 
              child: Text("Palindrome Number", style: TextStyle(fontSize: 35)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.black87,
              )),
            ),
            SizedBox(height: 20),
          ],
          
          ),  
        ),
    );
  }
}