import 'package:flutter/material.dart';
import 'package:lesson34_snackbar/screens/homework/screen/main_screen.dart';
import 'package:lesson34_snackbar/screens/homework/second_screen.dart';
import 'package:lesson34_snackbar/screens/mashq3.dart';
import 'package:lesson34_snackbar/screens/overlapping.dart';
import 'package:lesson34_snackbar/screens/snackBar.dart';
import 'package:lesson34_snackbar/screens/snackbar/snackbar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          SnackBarPage(),
          SecondScreen(),
          MainScreen(),
          Mashq3Screen(),
          SnackbarScreen(),
          OverlappingShapes(),
        ],
      ),
    );
  }
}
