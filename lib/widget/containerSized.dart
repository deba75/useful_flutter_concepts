import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Container and Sizedbox'),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.redAccent, //shape: BoxShape.circle
                //borderRadius: BorderRadius.circular(25)
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 5,
                    color: Colors.black,
                  )
                ]),
            child: Center(child: Text('Deba', style: TextStyle(fontSize: 20)))),
      ),
    );
  }
}
