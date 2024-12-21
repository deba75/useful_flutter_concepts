import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Bottom Sheet Widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  isScrollControlled: true,
                  enableDrag: true,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Fruit 1'),
                          subtitle: Text('Is very Tasty'),
                        ),
                        ListTile(
                          title: Text('Fruit 2'),
                          subtitle: Text('Is very Tasty'),
                        ),
                        ListTile(
                          title: Text('Fruit 3'),
                          subtitle: Text('Is very Tasty'),
                        ),
                        ListTile(
                          title: Text('Fruit 4'),
                          subtitle: Text('Is very Tasty'),
                        ),
                        ListTile(
                          title: Text('Fruit 5'),
                          subtitle: Text('Is very Tasty'),
                        ),
                        ListTile(
                          title: Text('Fruit 6'),
                          subtitle: Text('Is very Tasty'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Show Bottom Sheet'),
          ),
        ));
  }
}
