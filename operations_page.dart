import 'package:flutter/material.dart';

class OperationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your operations content here, e.g., buttons for Pugging, Insulator, Drying, etc.
          ],
        ),
      ),
    );
  }
}
