import 'package:flutter/material.dart';
import 'package:indeed_ui/utils/color_contstants.dart';
import 'package:indeed_ui/views/localdata.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

final Map<String, Color> nameColorMap = {};

Color getColorForName(String name) {
  if (!nameColorMap.containsKey(name)) {
    nameColorMap[name] =
        msgContainerColors[nameColorMap.length % msgContainerColors.length];
  }
  return nameColorMap[name]!;
}

class _MessageScreenState extends State<MessageScreen> {
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
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              print("Notification");
            },
            child: Icon(Icons.notifications),
          ),
          SizedBox(width: 20),
        ],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black, width: 10)),
                hintText: 'Inbox',
              ),
            ),
          ),
          Divider(
            color: Colors.black87,
            thickness: 0.5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Localdata.message.length,
              itemBuilder: (context, index) {
                final message = Localdata.message[index];
                final name = message['Name'];
                final color = getColorForName(name);
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: color,
                            ),
                            child: Icon(
                              Icons.maps_home_work_outlined,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Localdata.message[index]['Name'],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                Text(
                                  Localdata.message[index]['Meassge'],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("15 Sep 2023"),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black87,
                      thickness: 1.5,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
