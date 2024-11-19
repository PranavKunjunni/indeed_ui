import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/images_contstants.dart';
import 'package:indeed_ui/utils/jobdetails.dart';
import 'package:indeed_ui/utils/menuscreen.dart';
import 'package:indeed_ui/views/message_screen/message_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  bool _isMenuVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void _toggleMenu() {
    setState(() {
      if (_isMenuVisible) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      _isMenuVisible = !_isMenuVisible;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 90,
          child: Image.asset(ImagesContstants.Logimage),
        ),
        actions: _isMenuVisible
            ? [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: _toggleMenu,
                ),
              ]
            : [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MessageScreen(),
                      ),
                    );
                  },
                  child: Icon(Icons.message),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    print("Notification");
                  },
                  child: Icon(Icons.notifications),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: _toggleMenu,
                  child: Icon(Icons.menu),
                ),
                SizedBox(width: 10),
              ],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          // Main content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Job title, keywords, or company",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter city or locality",
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Jobs for you",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Text("Jobs based on your activity on indeed"),
                  JobDetails(),
                ],
              ),
            ),
          ),
          if (_isMenuVisible)
            GestureDetector(
              onTap: _toggleMenu,
              child: Container(
                color: Colors.black.withOpacity(0.5), 
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: menuscreen(
                    offsetAnimation: _offsetAnimation,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
