import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    padding: EdgeInsets.all(20),
                    content: Text("Subscribe"),
                    leading: Icon(Icons.notifications_active_outlined),
                    elevation: 5,
                    backgroundColor: Colors.white12,
                    actions: [
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: Text("Dismiss"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Material Banner"),
            ),
            ElevatedButton(
              child: Text("Show Snackbar"),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Flutter Mapp")));
              },
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Text("This is the alert dialog"),
                    contentPadding: EdgeInsets.all(20),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Exit"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Show Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text("show modal bottom sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
