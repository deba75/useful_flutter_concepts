import 'package:flutter/material.dart';
import 'package:widgets/widget/alertDialog.dart';
import 'package:widgets/widget/animated_Text.dart';
import 'package:widgets/widget/dismissible.dart';
import 'package:widgets/widget/drawer.dart';
import 'package:widgets/widget/rowsCols.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(
        index); //this_is_need_when_we_will_call_pages_from_the_navbar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Nav'),
      //   backgroundColor: Colors.cyan,
      // ),thi_appbar_is_commented_out_because_we're_calling_these_classes_via_pageView_and_these_all_have_their_own_appbar
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DrawerWidget(),
          RowsCols(),
          AnimatedTextWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
      ),
    );
  }
}
