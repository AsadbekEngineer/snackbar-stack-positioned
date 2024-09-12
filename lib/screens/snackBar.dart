import 'package:flutter/material.dart';

class SnackbarScreen extends StatefulWidget {
  const SnackbarScreen({super.key});

  @override
  State<SnackbarScreen> createState() => _SnackbarScreenState();
}

class _SnackbarScreenState extends State<SnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layered Text mashq2"),
      ),
      body: Container(
        color: Colors.red,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Opacity(
                opacity: 0.5,
                child: Text(
                  "World",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 29),
              ),
            )
          ],
        ),
      ),
    );
  }
}
