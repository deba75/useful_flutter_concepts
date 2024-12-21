import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: Text("This is an alert"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('This is demo'),
                Text('This is Deba'),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel ')),
          ],
        );
      });
}
