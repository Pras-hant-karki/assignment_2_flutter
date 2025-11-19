import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final TextEditingController numberController = TextEditingController(
    text: "121",
  );

  //global key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState> ();

  String result= "";

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Palindrome Checker")),
        backgroundColor: Colors.purple,
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
                  hintText: "e.g. 121",
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
                      String input = numberController.text;
                      String reversed = input.split('').reversed.join();

                      setState(() {
                        result = (input == reversed)
                            ? "$input is a Palindrome"
                            : "$input is NOT a Palindrome";
                      });

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(content: Text(result)),
                      // );
                    }
                  },
                  child: const Text("Check Palindrome", style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                result,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}