import 'dart:async';

import 'package:flutter/material.dart';
import 'package:indeed_ui/views/home_screen/home_screen.dart';

class DataloadingScreen extends StatefulWidget {
  const DataloadingScreen({super.key});

  @override
  State<DataloadingScreen> createState() => _DataloadingScreenState();
}

class _DataloadingScreenState extends State<DataloadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
