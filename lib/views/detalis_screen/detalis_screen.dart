import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:indeed_ui/utils/color_contstants.dart';

class DetalisScreen extends StatefulWidget {
  const DetalisScreen({super.key});

  @override
  State<DetalisScreen> createState() => _DetalisScreenState();
}

class _DetalisScreenState extends State<DetalisScreen> {
  bool _showFullDescription = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: iconsColor,
          ),
        ),
        actions: [
          Icon(Icons.share),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "News Reporter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("A N D Groups"),
                  Text("Kochi,Kerala")
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(height: 20),
            // Section
            _profile(),
            // Section
            SizedBox(height: 20),
            Divider(
              color: Colors.black12,
            ),
            SizedBox(
              height: 20,
            ),
            // Section
            _jobdetails(),
            SizedBox(height: 20),
            Divider(
              color: Colors.black12,
            ),
            // Section
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Kochi,Kerala"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black12,
            ),
            // Section
            SizedBox(height: 10),
            _fullJobDescription(),
            Divider(
              color: Colors.black12,
            ),
            // Section
            SizedBox(
              height: 30,
            ),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _buttons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.flash,
              color: Colors.blue,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              "Typically responds within 1 day",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 15, top: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[900]),
            child: Center(
              child: Text(
                "Apply now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 15, top: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.bookmark_border),
                Text(
                  "Save job",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 15, top: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[350]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flag),
                Text(
                  "Report job",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          height: 5,
          color: Colors.black,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Padding _fullJobDescription() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Full job description",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20),
          Text(
            _showFullDescription
                ? """The News Reporter is responsible for researching, investigating, and presenting news stories to inform the public on current events. 
This role requires gathering information, conducting interviews, and writing or editing news articles to deliver accurate and timely reports.

Job Type: Full-time
Pay: ₹9,795.61 - ₹25,000.00 per month

Schedule:
- Day shift

Supplemental Pay:
- Performance bonus

Experience:
- Total work: 1 year (Preferred)
- Anchoring: 1 year (Required)

License/Certification:
- Journalism and mass communication certification (Preferred)

Work Location: In-person
              """
                : "The News Reporter is responsible for researching, investigating, and presenting news stories.",
            style: TextStyle(fontSize: 14),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _showFullDescription = !_showFullDescription;
              });
            },
            child: Row(
              children: [
                Text(
                  _showFullDescription ? "Show Less" : "Show More",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _jobdetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Job details",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Hereshow the job details with your profile."),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.money,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Pay",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 90),
            child: Container(
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green[100]),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.green[700],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "9,795.61 - 25,000.00 a month",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.green[700],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.card_travel,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Job type",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 220),
            child: Container(
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green[100]),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.green[700],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Full-time",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.green[700],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                Icons.alarm_outlined,
                color: Colors.grey[600],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Shift and schedule",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 220),
            child: Container(
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green[100]),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.green[700],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Full-time",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.green[700],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _profile() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile insights",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            "Hereshow the job qualifications with your profile.",
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.sunny_snowing,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Skills",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      // width: 210,
                      padding: EdgeInsets.only(left: 8, top: 9, bottom: 9),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Presntation skills(required)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5, top: 9, bottom: 9),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "jour(required)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 9, bottom: 9),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Editing(required)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8, top: 9, bottom: 9),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Photography",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text("Do you have experiences in Presentation Skills?"),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Colors.blue,
                        ),
                      ),
                      child: Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Colors.blue,
                        ),
                      ),
                      child: Text(
                        "No",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
