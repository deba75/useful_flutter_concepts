import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button"), backgroundColor: Colors.deepPurple),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.all(20)),
                overlayColor: WidgetStateProperty.all(Colors.red),
                elevation: WidgetStateProperty.all(10),
                backgroundColor: WidgetStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: Text(
                'Press Here',
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // backgroundColor: WidgetStateProperty.all(Colors.green),
              height: 45,
              width: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  //backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor),),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  print('like');
                },
                child: Text(
                  'Deba Here',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            )
          ]),
    );
  }
}
