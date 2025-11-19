import 'package:flutter/material.dart';
import 'dart:math';

  class ArmstrongScreen extends StatefulWidget {
  const ArmstrongScreen({super.key});

  @override
  State<ArmstrongScreen> createState() => _ArmstrongScreenState();
}

class _ArmstrongScreenState extends State<ArmstrongScreen> {
    //controller
  final TextEditingController numberController = TextEditingController(
    text: "153",
  );

  //Global key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Armstrong Number Checker")),
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
        Navigator.pop(context); // goes back to Dashboard
        },
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter a number",
                  hintText: "e.g. 153",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 11),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int number = int.parse(numberController.text);
                      int original = number;
                      int sum = 0;
                      int n = number.toString().length;

                      while (number > 0) {
                        int digit = number % 10;
                        sum += pow(digit, n).toInt();
                        number ~/= 10;
                      }

                      setState(() {
                        result = (sum == original)
                            ? "$original is an Armstrong number"
                            : "$original is NOT an Armstrong number";
                      });
                  }
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(content: Text(result)),
                    // );
                  },
                  child: const Text("Check Armstrong", style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(result, style: const TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}