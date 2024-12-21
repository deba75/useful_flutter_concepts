import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Doraemon Image"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade800,
                  spreadRadius: 5.0)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                  'https://www.google.com/imgres?q=doraemon%20images&imgurl=https%3A%2F%2Fphotoswalay.com%2Fwp-content%2Fuploads%2F2024%2F07%2Fdoraemon-photo-new-10.jpg&imgrefurl=https%3A%2F%2Fphotoswalay.com%2Fdoraemon-photos%2F&docid=swG7JEYvqjHlOM&tbnid=z4F5IvZkqTLo9M&vet=12ahUKEwjV2NOvlaqKAxWzTWwGHTbvDQk4ChAzegQIWRAA..i&w=375&h=375&hcb=2&ved=2ahUKEwjV2NOvlaqKAxWzTWwGHTbvDQk4ChAzegQIWRAA'),
              fit: BoxFit.cover,
            ),
          ),
        )));
  }
}
