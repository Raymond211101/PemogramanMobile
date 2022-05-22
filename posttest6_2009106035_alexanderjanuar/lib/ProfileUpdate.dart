import 'controller/HomeController.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateProfile extends StatelessWidget {
  UpdateProfile({Key? key}) : super(key: key);
  final page = Get.put(HomeController());

  DateTime now = DateTime.now();

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
            child: Obx(() => TextField(
                  controller: page.storeNameEditingController.value,
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
                )),
          ),
          SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("E-mail Address",
                  style: TextStyle(fontSize: 17, color: Colors.grey))),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Obx(() => TextField(
                  controller: page.storeEmailEditingController.value,
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
                )),
          ),
          SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Tanggal Lahir",
                  style: TextStyle(fontSize: 17, color: Colors.grey))),
          Row(children: [
            Container(
              height: 50,
              width: 250,
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              padding: const EdgeInsets.only(top: 13, left: 15, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFB72B),
              ),
              child: Obx(() => Text(
                  DateFormat.yMMMMd('en_US').format(page.selectedDate.value),
                  style: TextStyle(fontSize: 17, color: Colors.white))),
            ),
            Container(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFFFB72B),
                  ),
                  onPressed: () {
                    page.chooseDate();
                  },
                  child: const Text("Edit Date",
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                ))
          ]),
          SizedBox(height: 30),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFFFB72B),
                elevation: 5.0,
              ),
              onPressed: () {
                page.setProfile();
              },
              child: Text("Edit Profile"),
            ),
          ),
        ]));
  }
}
