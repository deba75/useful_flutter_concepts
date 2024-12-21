import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ListGrid'),
        elevation: 60,
      ),
      body: Container(
        // child: ListView(
        //   children: [
        //     Card(
        //       child: ListTile(
        //         title: Text("Apple"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Orange"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit0"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit1"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit2"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit3"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit4"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit5"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //     Card(
        //       child: ListTile(
        //         title: Text("Fruit6"),
        //         subtitle: Text('Deba'),
        //       ),
        //     ),
        //   ],
        // ),

        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 60),
          children: [
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text("Apple")),
            ),
            Card(
              child: Center(child: Text('Color')),
            ),
            Card(
              child: Center(child: Text('Fruit1')),
            ),
            Card(
              child: Center(child: Text('Fruit2')),
            ),
            Card(
              child: Center(child: Text('Fruit3')),
            ),
          ],
        ),
      ),
    );
  }
}
