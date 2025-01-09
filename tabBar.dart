import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          backgroundColor: Colors.blue,
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.blue.shade800,
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.chat,
                    ),
                    text: 'Chats'),
                Tab(
                    icon: Icon(
                      Icons.account_circle_rounded,
                    ),
                    text: 'Profile'),
                Tab(
                    icon: Icon(
                      Icons.search,
                    ),
                    text: 'Search'),
                Tab(
                    icon: Icon(
                      Icons.settings,
                    ),
                    text: 'Settings'),
              ]),
        ),
        body: TabBarView(children: [
          Container(
              child: Center(
            child: Text('Chats', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('Profile', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('Search', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('Settings', style: TextStyle(fontSize: 30)),
          ))
        ]),
      ),
    );
  }
}
