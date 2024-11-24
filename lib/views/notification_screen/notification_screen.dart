import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/color_contstants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.home,
          ),
        ),
        actions: [
          Icon(
            Icons.message,
            color: iconsColor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            color: iconsColor,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.menu,
            color: iconsColor,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/nothification.png"),
              ],
            ),
            Text(
              "Nothing right now.check back later!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "This is where we'll notify you about your job applications and other useful information to help you with your job serach.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade900,
                  border: Border.all(
                    width: 1,
                    color: Colors.blue.shade900,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Find jobs",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
