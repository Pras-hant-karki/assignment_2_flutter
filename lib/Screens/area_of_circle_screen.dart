import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  //controller
  final TextEditingController radiusController = TextEditingController(
    text: "7",
  );
  //Global key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Area of Circle Screen")),
        backgroundColor: const Color.fromARGB(255, 176, 233, 63),
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
            children: [
              TextFormField(
                //validation
                controller: radiusController, // controller added
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter radius of circle",
                  hintText: "eg: 5",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter number';
                    }
                    return null;
                  },
              ),
              SizedBox(height: 11),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  if (_formKey.currentState!.validate()) {
                  // valid
                  double radius = double.parse(radiusController.text);
                    setState(() {
                      result = 3.14 * radius * radius;
                  });
                }
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                  ),
                  child: Text("Calculate Area", style: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: 20),
              Text("Area is: $result", style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}