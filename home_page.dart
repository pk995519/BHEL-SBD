import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Chat Page
              },
              child: Text('Chat'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Status Page
              },
              child: Text('Status'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Report Page
              },
              child: Text('Report'),
            ),
          ],
        ),
      ),
    );
  }
}
