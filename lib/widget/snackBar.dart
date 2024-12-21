import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar'), backgroundColor: Colors.blue),
      body: Container(
          child: Center(
        child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                  action: SnackBarAction(label: 'Undo', onPressed: () {}),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  behavior: SnackBarBehavior.floating,
                  // padding: EdgeInsets.all(10),
                  duration: const Duration(milliseconds: 3000),
                  backgroundColor: Colors.green,
                  content: Text('This is snackbar'));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Show Snackbar')),
      )),
    );
  }
}
