import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack Widget'),
          backgroundColor: Colors.green.shade700,
        ),
        // body: Container(
        //   color: Colors.blue,
        //   child: Center(
        //       child: Stack(
        //     children: [
        //       Center(
        //           //here_we_can_use_positioned_also_at_Center_to_position_the_container_more_smoothly
        //           child:
        //               Container(height: 400, width: 400, color: Colors.yellow)),
        //       Center(
        //           child:
        //               Container(height: 300, width: 300, color: Colors.purple)),
        //       Center(
        //           child: Container(height: 200, width: 200, color: Colors.red)),
        //       Center(
        //           child: Container(height: 100, width: 100, color: Colors.green)),
        //     ],
        //   )),
        // ),
        body: Stack(
          children: [
            Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('fox.jpg'), fit: BoxFit.cover
                        //child: Image.asset('fox.jpg')),
                        )),
              ),
            ),
            // Positioned(
            //   left: 20,
            //   child: Container(height: 50, width: 50, color: Colors.blue),
            // )
          ],
        ));
  }
}
