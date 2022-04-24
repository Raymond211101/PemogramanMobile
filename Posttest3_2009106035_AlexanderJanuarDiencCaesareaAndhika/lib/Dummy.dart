import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int angka = 0;
  String depan = "", belakang = "";
  TextEditingController controllerBelakang = TextEditingController();
  TextEditingController controllerDepan = TextEditingController();
  bool? myCheck = false;

  String groupValue = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerBelakang.dispose();
    controllerDepan.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pertemuan 3"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 50),
            TextField(
              controller: controllerDepan,
              decoration: InputDecoration(
                hintText: "Masukkan nama depan",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30, width: 50, child: Text("123")),
            TextFormField(
              controller: controllerBelakang,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Masukkan nama belakang",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  depan = controllerDepan.text;
                  belakang = controllerBelakang.text;
                });
              },
              child: Text("Submit"),
            ),
            Checkbox(
              value: myCheck,
              onChanged: (value) {
                myCheck = value;
                setState(() {});
              },
            ),
            for (var item in radioValue)
              Row(
                children: [
                  Radio(
                    value: item,
                    groupValue: groupValue,
                    onChanged: (value) {
                      groupValue = value.toString();
                      print(groupValue);
                      setState(() {});
                    },
                  ),
                  Text(item),
                ],
              ),
            Text("Nama saya adalah : $depan $belakang"),
          ],
        ),
        floatingActionButton: new FloatingActionButton.extended(
            label: Text('Approve'),
            elevation: 0.0,
            icon: Icon(Icons.thumb_up),
            backgroundColor: new Color(0xFFE57373),
            onPressed: () {}));
  }
}

List<String> radioValue = ["Memancing", "Membaca", "Ngoding"];
