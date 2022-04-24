import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UpdateDart.dart';

class ProfilePageSetting extends StatefulWidget {
  String name = " ";
  ProfilePageSetting({Key? key, required this.name}) : super(key: key);

  @override
  State<ProfilePageSetting> createState() => _ProfilePageState();
}

DateTime datetime = DateTime.now();
String formatter = DateFormat.yMMMMd('en_US').format(datetime);

String depan = "";
TextEditingController SearchController = TextEditingController();

List Profile = ["Alexander Januar","Alex","alexanderjanuar16@gmail.com",DateFormat.yMMMMd('en_US').format(datetime)];


void dispose() {}

class _ProfilePageState extends State<ProfilePageSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 7,
            backgroundColor: Color(0xFFFFFFB72B),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                          child: const Text("Alexander Januar",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17))),
                      Container(
                          padding: const EdgeInsets.only(right: 20),
                          child: const Text("Machine Learning Enthusiast",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12)))
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 22,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('asset/Python.png'),
                    ),
                  ),
                ])),
        body: ListView(children: <Widget>[
          Container(
            height: 220,
            color: Colors.amber,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 30),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('asset/Python.png'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Alexander Januar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white)),
                ]),
          ),
          const SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Name",
                  style: TextStyle(fontSize: 15, color: Colors.grey))),
          Container(
            height: 40,
            padding: const EdgeInsets.only(),
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 30),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xFFFFFFB72B),
              width: 2,
            ))),
            child: Text(Profile[0],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Username",
                  style: TextStyle(fontSize: 15, color: Colors.grey))),
          Container(
            height: 40,
            padding: const EdgeInsets.only(),
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 30),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xFFFFFFB72B),
              width: 2,
            ))),
            child: Text(Profile[1],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("E-mail Address",
                  style: TextStyle(fontSize: 15, color: Colors.grey))),
          Container(
            height: 40,
            padding: const EdgeInsets.only(),
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 30),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xFFFFFFB72B),
              width: 2,
            ))),
            child: Text(Profile[2],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Tanggal Lahir",
                  style: TextStyle(fontSize: 15, color: Colors.grey))),
          Container(
            height: 40,
            padding: const EdgeInsets.only(),
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 30),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xFFFFFFB72B),
              width: 2,
            ))),
            child: Text(Profile[3],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19)),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFB72B),
                  elevation: 5.0,
                  shape: StadiumBorder()),
              onPressed: () {
                setState(() {
                  _navigateAndDisplaySelection(context);
                });
              },
              child: Text("Edit Profile"),
            ),
          )
        ]));
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const UpdateProfile()),
    );

    setState(() {
      result != null ?Profile = result : Profile;
    });

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("Data Telah Diperbaharui")));
  }
}
