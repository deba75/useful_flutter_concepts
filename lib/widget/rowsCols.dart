import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Column"),
      ),
      body: Container(
        height: 200,
        //width: w,
        width: 200,
        color: Colors.blueAccent,
        child: Wrap(
          direction: Axis.vertical,

          alignment: WrapAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.end,if_want_to_put_the_boxes_in_the_end
          //mainAxisAlignment: MainAxisAlignment.start,if_want_to_put_the_boxes_in_the_start
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //if_want_to_put_the_boxes_with_space_equally
          //mainAxisAlignment: MainAxisAlignment.spaceBetween, //can_try_to_space_between_the_boxes
          //crossAxisAlignment: CrossAxisAlignment.start,
//these_alignments_are_only_usable_when_the_child:Row/Column.For_wrap_we_can't_use_them
          children: [
            Container(height: 60, width: 60, color: Colors.red),
            Container(height: 60, width: 60, color: Colors.yellow),
            Container(height: 60, width: 60, color: Colors.white),
            Container(height: 60, width: 60, color: Colors.green),
            Container(height: 60, width: 60, color: Colors.deepPurple),
            Container(height: 60, width: 60, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
