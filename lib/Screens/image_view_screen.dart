import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image View Screen"),
        backgroundColor: Colors.amberAccent,
      ),
      body: 
        SingleChildScrollView(
          child: Column(
          children:[
            SizedBox(
              height: 170,
              child: Image.asset('assets/images/image1.png'),
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 130,
              child: Image.asset('assets/images/image2.png'),
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 160,
              child: Image.network('https://www.independentliving.co.uk/wp-content/uploads/2022/12/Sarcopenia.png'),
            ),

            SizedBox(
              height: 160,
              child: Image.network('https://media.istockphoto.com/id/1202532552/vector/cartoon-color-osteoporosis-bones-ad-poster-card-vector.jpg?s=612x612&w=0&k=20&c=mZ9OOr87UuuWa4bt0jOA7foYVT8QJ3jnXroaAwrHDRU='),
            ),
          ]
        ),
        )
      );
  }
}