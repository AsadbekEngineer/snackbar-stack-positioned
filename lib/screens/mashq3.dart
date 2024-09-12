import 'package:flutter/material.dart';

class Mashq3Screen extends StatefulWidget {
  const Mashq3Screen({super.key});

  @override
  State<Mashq3Screen> createState() => _Mashq3ScreenState();
}

class _Mashq3ScreenState extends State<Mashq3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Mashq3"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              child: Text(
                "Text Button",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
