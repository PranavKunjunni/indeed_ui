import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/color_contstants.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Map<String, String>> jobImprovements = [
    {
      "HeadingText": "Qualifications",
      "text": "Highlight your skills and experience."
    },
    {
      "HeadingText": "Job Preferences",
      "text": "Save specific details like minimum desired pay and schedule."
    },
    {
      "HeadingText": "Hide Jobs with These Details",
      "text": "Manage the qualifications or preferences and schedule."
    },
    {
      "HeadingText": "Ready to Work",
      "text": "Let employers know that you're available to start working as soon as possible."
    },
  ];

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        "8589946781",
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
                        "Mvattupuzha H.O, Kochi, Kerala, 682316, IN",
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
              SizedBox(height: 10),
              _buildResumes(
                icon: Icons.file_copy,
                title: "Indeed Resume",
                updateDate: "Updated 27 Oct 2024",
                isSearchable: true,
                icon1: Icons.arrow_forward_ios,
              ),
              SizedBox(height: 10),
              _buildResumes(
                icon: Icons.picture_as_pdf,
                title: "Uploaded Resume",
                updateDate: "Added 28 Oct 2024",
                isSearchable: false,
                showSearchableRow: false,
                icon1: Icons.more_vert_outlined,
              ),
              SizedBox(height: 50),
              Text(
                "Improve Your Job Matches",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black, thickness: 0.5),
              Column(
                children: jobImprovements.map((job) {
                  return _improveYourJobs(
                    headingText: job["HeadingText"]!,
                    text: job["text"]!,
                  );
                }).toList(),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }

  Widget _improveYourJobs({
    required String headingText,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headingText,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(width: 4,),
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          Divider(color: Colors.black, thickness: 0.5),
        ],
      ),
    );
  }

  Container _buildResumes({
    required IconData icon,
    required IconData icon1,
    required String title,
    required String updateDate,
    required bool isSearchable,
    bool showSearchableRow = true,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
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
            icon,
            size: 60,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
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
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Searchable",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
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
