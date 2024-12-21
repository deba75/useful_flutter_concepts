import 'package:flutter/material.dart';
import 'package:widgets/widget/alertDialog.dart';
import 'package:widgets/widget/animated_Text.dart';
import 'package:widgets/widget/bottomNavigation.dart';
import 'package:widgets/widget/bottomSheet.dart';
import 'package:widgets/widget/button.dart';
import 'package:widgets/widget/containerSized.dart';
import 'package:widgets/widget/dismissible.dart';
import 'package:widgets/widget/drawer.dart';
import 'package:widgets/widget/images.dart';
import 'package:widgets/widget/listView_Gridview.dart';
import 'package:widgets/widget/rowsCols.dart';
import 'package:widgets/widget/snackBar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
      //home: Container_Sized(),"to call Container_Sized uncomment this"
      //home: RowsCols(),
      //home: ButtonWidget(),
      //home: ListGrid(),
      //home: SnackBarWidget(),
      //home: DismissibleWidget(),
      //home: DrawerWidget(),
      //home: ImageWidget(),
      //home: AlertWidget(),
      //home: BottomSheetWidget(),
      //home: AnimatedTextWidget(),
      home: BottomNav(),
    );
  }
}
