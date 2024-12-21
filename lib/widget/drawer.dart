import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
              color: Theme.of(context).primaryColor,
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: Container(
                      color: Colors.deepPurple,
                      padding: EdgeInsets.all(5),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/fox.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Dabasis Das',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('deba@gmail.com')
                            ])
                      ]),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.folder),
                    title: Text('My files'),
                  ),
                  ListTile(
                    leading: Icon(Icons.group),
                    title: Text('Shared With me'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Starred'),
                  ),
                  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Trash'),
                  ),
                  ListTile(
                    leading: Icon(Icons.upload),
                    title: Text('Uploads'),
                  ),
                  ListTile(
                    leading: Icon(Icons.download),
                    title: Text('Downloads'),
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('History'),
                  ),
                  ListTile(
                    leading: Icon(Icons.recent_actors),
                    title: Text('Recent'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Share'),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log Out'),
                  ),
                ],
              )),
        ),
        appBar: AppBar(
          title: Text('Drawer'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(child: Center(child: Text('Hello'))));
  }
}
