import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: Text("data"),
        ),
        actions: [
          Icon(Icons.message),
          SizedBox(width: 20),
          Icon(Icons.notification_important_rounded),
          SizedBox(width: 20),
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
