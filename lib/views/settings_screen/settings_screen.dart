import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Settings",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
          _settingitems(
            iconData: Icons.person,
            lable: "Account settings",
            text: "Your contact information",
            iconData2: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
          _settingitems(
            iconData: Icons.lock,
            lable: "Security settings",
            text: "Manage your account security",
            iconData2: Icons.arrow_forward_ios_rounded,
            badgeText: "New",
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
          _settingitems(
            iconData: Icons.email,
            lable: "Communications settings",
            text: "Manage notifications and message settings",
            iconData2: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
          _settingitems(
            iconData: Icons.tv,
            lable: "Device management",
            text: "Manage your active devices and sessions",
            iconData2: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
          _settingitems(
            iconData: Icons.security,
            lable: "Privacy settings",
            text: "information about your privacy on Indeed",
            iconData2: Icons.arrow_forward_ios_rounded,
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget _settingitems({
    required IconData iconData,
    required String lable,
    required String text,
    required IconData iconData2,
    String? badgeText,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      lable,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    if (badgeText != null)
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          badgeText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
                Text(
                  text,
                  style: GoogleFonts.montserrat(color: Colors.grey[900]),
                ),
              ],
            ),
          ),
          Icon(
            iconData2,
            size: 20,
          )
        ],
      ),
    );
  }
}
