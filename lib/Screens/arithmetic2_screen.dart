import 'package:flutter/material.dart';

class Arithmetic2Screen extends StatefulWidget {
  const Arithmetic2Screen({super.key});

  @override
  State<Arithmetic2Screen> createState() => _Arithmetic2ScreenState();
}

class _Arithmetic2ScreenState extends State<Arithmetic2Screen> {
  //Controller
  final TextEditingController firstController = TextEditingController(
    text: "44"
  );
  final TextEditingController secondController = TextEditingController(
    text: "90"
  );

  // GlobalKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? group = 'myGroup';
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Center(
          child: Text(
            "Arithmetic Screen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
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
            controller: secondController,


            decoration: InputDecoration(
              labelText: "Enter second number",
              hintText: "eg: 69",

              border:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),


            ),
             validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
          ),
          SizedBox(height: 11),
          
          //Radio Buttons
            ListTile(
                title: const Text("Addition"),
                leading: Radio(
                  value: "add",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),

            ListTile(
                title: const Text("Subtract"),
                leading: Radio(
                  value: "subtract",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),

            ListTile(
                title: const Text("Product"),
                leading: Radio(
                  value: "Product",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),

            ListTile(
                title: const Text("Divide"),
                leading: Radio(
                  value: "Divide",
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}