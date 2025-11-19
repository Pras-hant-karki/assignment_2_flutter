import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  //controller
  final TextEditingController firstController = TextEditingController(
    text: "45",
  );
  final TextEditingController secondController = TextEditingController(
    text: "55",
  );

  //Global key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("Arithmetic Screen")),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
        Navigator.pop(context); // goes back to Dashboard
        },
      ),
      ),
       body: Padding(
        padding: EdgeInsets.all(11), 
        child: Form(
          key: _formKey,
          child: Column(
          // multi child
          children: [
          TextFormField(
            //validation
            keyboardType: TextInputType.number,
            controller: firstController,
            decoration: InputDecoration(
              labelText: "Enter first number",
              hintText: "eg: 23",
              border:OutlineInputBorder(),
            ),
              validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first number';
                  }
                  return null;
                },
          ),
          SizedBox(height: 11),
          TextFormField(
            keyboardType: TextInputType.number,
            // onChanged: (value) {
            //   second = int.tryParse(value) ?? 0;
            // },
            controller: secondController,
            decoration: InputDecoration(
              labelText: "Enter second number",
              hintText: "eg: 69",
              border:OutlineInputBorder(),
            ),
             validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
          ),
          SizedBox(height: 11),
          //Button1
          SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // valid
                int firstNo = int.parse(firstController.text);
                int secondNo = int.parse(secondController.text);
                  setState(() {
                    result = firstNo + secondNo;
                });
              }
            },
            child: Text("Sum", style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue, // Background color
               foregroundColor: Colors.black, // Text color
              ),
            ),
          ),
          SizedBox(height:11),
          //Button2
          SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // valid
                int firstNo = int.parse(firstController.text);
                int secondNo = int.parse(secondController.text);
                  setState(() {
                    result = firstNo - secondNo;
                });
              }
            },
            child: Text("Difference", style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue, // Background color
               foregroundColor: Colors.black, // Text color
              ),
            ),
          ),
          SizedBox(height:11),
          //Button3
          SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // valid
                int firstNo = int.parse(firstController.text);
                int secondNo = int.parse(secondController.text);
                  setState(() {
                    result = firstNo * secondNo;
                });
              }
            },
            child: Text("Product", style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue, // Background color
               foregroundColor: Colors.black, // Text color
              ),
            ),
          ),
          SizedBox(height:11),
          Text("Result is : $result", style: TextStyle(fontSize: 20)),
          ],
          ),
        ),
      ),
    );
  } 
}