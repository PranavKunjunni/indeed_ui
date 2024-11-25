import 'package:flutter/material.dart';
import 'package:indeed_ui/views/detalis_screen/detalis_screen.dart';
import 'package:indeed_ui/views/localdata.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(
        Localdata.Job_deatils.length,
        (index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetalisScreen(),
              ),
            );
            print("DetalisScreen");
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (Localdata.Job_deatils[index]['hiring']?.isNotEmpty ??
                          false)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 225, 162, 214)
                                .withOpacity(1.0),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Localdata.Job_deatils[index]['hiring'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 201, 62, 178),
                                ),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      Text(
                        Localdata.Job_deatils[index]['CompanyName'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        Localdata.Job_deatils[index]['Location'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 152, 203, 154)
                                  .withOpacity(1.0),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  Localdata.Job_deatils[index]['Salary'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade900),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.green.shade900,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 152, 203, 154)
                                  .withOpacity(1.0),
                              border: Border.all(color: Colors.white, width: 1),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  Localdata.Job_deatils[index]['jobTime1'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade900),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.green.shade900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      if (Localdata
                              .Job_deatils[index]['jobTime2']?.isNotEmpty ??
                          false)
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 152, 203, 154)
                                .withOpacity(1.0),
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: Row(
                            children: [
                              Text(
                                Localdata.Job_deatils[index]['jobTime2'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade900),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.favorite,
                                color: Colors.green.shade900,
                              ),
                            ],
                          ),
                        ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(
                            Icons.send_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Easily apply",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Active 10 days ago",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.bookmark_border,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 0,
                    child: Icon(
                      Icons.block,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
