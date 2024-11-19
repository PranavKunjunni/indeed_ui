import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/color_contstants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              size: 20,
            ),
          ),
        ],
      ),
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PRANAV A BIJU",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    radius: 40,
                    child: Text(
                      "PA",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Section
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 30,
                      color: textColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "pranav.a.biju007@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 30,
                      color: textColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "858994678!",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, size: 20),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 30,
                      color: textColor,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Mvattupuzha H.O,Kochi,Kerala,682316,IN",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "Resumes",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Section
            _bulidResumes(
              icon: Icons.file_copy,
              title: "indeed Resume",
              updateDate: "Updated 27 Oct 2024",
              isSerachable: true,
              icon1: Icons.arrow_forward_ios,
            ),
            SizedBox(
              height: 10,
            ),
            _bulidResumes(
              icon: Icons.picture_as_pdf,
              title: "indeed Resume",
              updateDate: "Added 28 Oct 2024",
              isSerachable: false,
              showSearchableRow: false,
              icon1: Icons.more_vert_outlined,
            ),
            SizedBox(
              height: 50,
            ),
            // Section
            Text(
              "improve your job matches",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            Text("data")
          ],
        ),
      ),
    );
  }

  Container _bulidResumes({
    required IconData icon,
    required IconData icon1,
    required String title,
    required String updateDate,
    required bool isSerachable,
    bool showSearchableRow = true,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: textColor,
        ),
      ),
      child: Row(
        children: [
          Icon(
            // Icons.file_copy,
            icon,
            size: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                updateDate,
                style: TextStyle(color: textColor),
              ),
              if (showSearchableRow)
                Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: textColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Searchable",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
            ],
          ),
          Spacer(),
          Icon(
            icon1,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
