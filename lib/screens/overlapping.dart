import 'package:flutter/material.dart';

class OverlappingShapes extends StatefulWidget {
  const OverlappingShapes({super.key});

  @override
  State<OverlappingShapes> createState() => _OverlappingShapesState();
}

class _OverlappingShapesState extends State<OverlappingShapes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Overlapping(stack) mashq 1 dars 34"),
      ),
      body: Container(
        color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellow),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
