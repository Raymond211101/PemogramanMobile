import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}


DateTime now = DateTime.now();
String formatter = DateFormat.yMMMMd('en_US').format(now);

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController SearchController = TextEditingController();
  TextEditingController SearchController1 = TextEditingController();
  TextEditingController SearchController2 = TextEditingController();

  List result = ["Alexander Januar","Alex","alexanderjanuar16",DateFormat.yMMMMd('en_US').format(now)];
  String depan = "";
  String username = "";
  String email = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Update Profile'),
          centerTitle: true,
          backgroundColor: Color(0xFFFFFFB72B),
          elevation: 7),
      body: ListView(children: [
        const SizedBox(height: 40),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: const Text("Name",
                style: TextStyle(fontSize: 17, color: Colors.grey))),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: TextField(
            controller: SearchController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Color(0xFFFFFFB72B),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'Full Name',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 30),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: const Text("Username",
                style: TextStyle(fontSize: 17, color: Colors.grey))),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: TextField(
            controller: SearchController1,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Color(0xFFFFFFB72B),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'Username (4 - 8 Words)',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 30),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: const Text("E-mail Address",
                style: TextStyle(fontSize: 17, color: Colors.grey))),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: TextField(
            controller: SearchController2,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Color(0xFFFFFFB72B),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'E-mail Address',
                hintStyle: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 30),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: const Text("Tanggal Lahir",
                style: TextStyle(fontSize: 17, color: Colors.grey))),
        Row(
          children: [
            Container(
              height: 50,
              width: 250,
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              padding: const EdgeInsets.only(top: 13, left: 15, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFB72B),
              ),
              child: Text(DateFormat.yMMMMd('en_US').format(now),
                  style: TextStyle(fontSize: 17, color: Colors.white)),
            ),
            Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFFFB72B),
                  ),
                  onPressed: () {
                    setState(() {
                      showDatePicker(
                          context: context,
                          initialDate: now,
                          firstDate: DateTime(1980),
                          lastDate: DateTime(2023)).then((date) {
                            setState(() {
                              now = date!;
                            });

                          });
                    });
                  },
                  child: const Text("Edit Date",
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ))
          ],
        ),
        SizedBox(height: 30),
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
                depan = SearchController.text;
                username = SearchController1.text;
                email = SearchController2.text;
                result[0] = depan;
                result[1] = username;
                result[2] = email;
                result[3] = DateFormat.yMMMMd('en_US').format(now);
                Navigator.pop(context, result);
              });
            },
            child: Text("Edit Profile"),
          ),
        )
      ]),
    );
  }
}
