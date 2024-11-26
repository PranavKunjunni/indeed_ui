import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:indeed_ui/views/language_screen/language_screen.dart';
import 'package:indeed_ui/views/my_jobs_screen/my_job_screen.dart';
import 'package:indeed_ui/views/my_reviews_screen/my_reviews_screen.dart';
import 'package:indeed_ui/views/profile_screen/profile_screen.dart';
import 'package:indeed_ui/views/settings_screen/settings_screen.dart';

class menuscreen extends StatelessWidget {
  const menuscreen({
    super.key,
    required Animation<Offset> offsetAnimation,
  }) : _offsetAnimation = offsetAnimation;

  final Animation<Offset> _offsetAnimation;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SlideTransition(
        position: _offsetAnimation,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    "My reviews",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // print("Company reviews");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyReviewsScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
                    print("Settings Screen");
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Country and language",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Flag(
                            Flags.india,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "india",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LanguageScreen(),
                      ),
                    );
                    // print("Country and language");
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "My jobs",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("My jobs");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyJobScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Profile");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "Terms",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Terms");
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "Accessibility at indeed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Accessibility at indeed");
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                ListTile(
                  title: Text(
                    "Sign out",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Sign out");
                  },
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                ),
                Spacer(),
                // Optional: Add a bottom padding if needed
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Footer or extra content here",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
