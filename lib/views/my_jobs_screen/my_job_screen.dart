import 'package:flutter/material.dart';

class MyJobScreen extends StatelessWidget {
  const MyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "My jobs",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Saved"),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "2",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Applied"),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Interviews"),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Archived"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Sectoin
            _saved(),
            // Section
            _applied(),
            // Section
            _interviews(),
            Center(
              child: Text("No archived jobs yet!"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _interviews() {
    return Column(
      children: [
        Image.asset(
          "assets/images/interviwes.png",
          fit: BoxFit.fill,
        ),
        Text(
          "No interviews Yet",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text("Scheduled interviews appear here."),
        SizedBox(height: 10),
        Text(
          "Not seeing an interview?",
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "interviews services",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 10,
                            ),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Setup device for interview",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Test your camera and microphone ahead of time",
                                    ),
                                    Image.asset("assets/images/interviwes1.png")
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Test your deveice",
                                      style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _applied() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 30),
            child: Text(
              "Last 14 days",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          SizedBox(height: 10),
          Column(
            children: List.generate(
              3,
              (index) => Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color:
                                  index == 0 ? Colors.red[50] : Colors.blue[50],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              index == 0
                                  ? "Not selected by employer"
                                  : "Applied",
                              style: TextStyle(
                                color: index == 0 ? Colors.red : Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Flutter Developer Intern",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Techinzo Professional Academy",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Remote",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Applied on Nov 12",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: double.infinity,
                        // color: Colors.red,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            "Update status",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 0.1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _saved() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image.asset(
              "assets/images/saved_job.png",
            ),
            SizedBox(height: 10),
            Text(
              "No job saved yet",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text("Jobs you save appear here."),
            SizedBox(height: 10),
            Text(
              "Not seeing a job?",
              style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 120,
              height: 50,
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue.shade900)),
                child: Row(
                  children: [
                    Text(
                      "Find jobs",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
