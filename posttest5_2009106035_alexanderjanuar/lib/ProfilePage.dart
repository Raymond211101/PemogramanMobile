import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime datetime = DateTime.now();
String formatter = DateFormat.yMMMMd('en_US').format(datetime);

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget ProfileForm(String name, Icon icon, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(title, style: TextStyle(color: Colors.grey)),
        ),
        Container(
          height: 40,
          padding: const EdgeInsets.only(),
          margin: const EdgeInsets.fromLTRB(25, 0, 30, 0),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black38,
          ))),
          child: Row(children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(name,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
          ]),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(height: 350),
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)]),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                    SizedBox(height: 50),
                  ]),
            ),
            Positioned(
              bottom: 0,
              left: 30,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFB72B),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                height: 140,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Mengikuti",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    SizedBox(height: 5),
                    Text("0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                    Text("Challange",
                        style: TextStyle(color: Colors.white, fontSize: 24))
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 30,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFB72B),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                height: 140,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Belajar",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    SizedBox(height: 5),
                    Text("0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                    Text("Kelas",
                        style: TextStyle(color: Colors.white, fontSize: 26))
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.only(),
          margin: const EdgeInsets.fromLTRB(25, 0, 30, 0),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black38,
          ))),
          child: Text(
            "ACCOUNT",
            style: TextStyle(
                color: Colors.black45, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        ProfileForm("Alexander", Icon(Icons.person_outline), "Nama Panjang"),
        ProfileForm("AlexanderDienc@gmail.com", Icon(Icons.email_outlined),
            "Alamat Email"),
        ProfileForm(DateFormat.yMMMMd('en_US').format(datetime),
            Icon(Icons.timelapse_outlined), "Tanggal Lahir"),
        SizedBox(height: 20),
        Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFB72B),
                  elevation: 5.0,
),
              onPressed: () {
                setState(() {
                });
              },
              child: Text("Edit Profile"),
            ),
          ),
        SizedBox(height: 20),

      ],
    ));
  }
}
