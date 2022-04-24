import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';



class PageForm extends StatefulWidget {
  const PageForm({Key? key}) : super(key: key);

  @override
  State<PageForm> createState() => _SearchPage();
}

List<String> items = [
  'Web Programming',
  'Machine Learning',
];

List<String> MateriMachineLearning = [
  'Python',
  'R',
];

List<String> MateriWebDevelopment = [
  'HTML',
  'CSS',
];

String? selectedValue;
String? selectedValue1;
String? selectedValue2;

String depan = "";
String depan1 = "";
String Selected = " ";
String Selected1 = " ";


class _SearchPage extends State<PageForm> {
  TextEditingController SearchController = TextEditingController();
  TextEditingController SearchController1 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffFDF3F3),
        appBar: AppBar(
            backgroundColor: Color(0xFFFFFED346),
            elevation: 7,
            title: Text("Search Page - Alexander")),
        body: ListView(children: <Widget>[
          Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFED346),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(30, 120, 30, 0),
                child: TextField(
                  controller: SearchController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(15),
                      filled: true,
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Cari Disini',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              )),
          const SizedBox(height: 30),
          Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
              child: CustomDropdownButton2(
                  buttonDecoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10.0)),
                  hint: 'Pilih Learning Path',
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  valueAlignment: Alignment.center,
                  dropdownItems: items,
                  value: selectedValue,
                  iconSize: 30.0,
                  dropdownWidth: 330,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                      Selected = selectedValue.toString();
                      
                    });
                  })),
          selectedValue == "Web Programming"
              ? Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: CustomDropdownButton2(
                      buttonDecoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.0)),
                      hint: 'Pilih Bahasa Pemrograman',
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      valueAlignment: Alignment.center,
                      dropdownItems: MateriWebDevelopment,
                      value: selectedValue1,
                      iconSize: 30.0,
                      dropdownWidth: 330,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedValue1 = value;
                          Selected1 = selectedValue1.toString();
                        });
                      }))
              : Container(
                  height: 60,
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: CustomDropdownButton2(
                      buttonDecoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.0)),
                      hint: 'Pilih Bahasa Pemrograman',
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      valueAlignment: Alignment.center,
                      dropdownItems: MateriMachineLearning,
                      value: selectedValue2,
                      iconSize: 30.0,
                      dropdownWidth: 330,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selectedValue2 = value;
                          Selected1 = selectedValue2.toString();

                        });
                      })),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 5.0, shape: StadiumBorder()),
              onPressed: () {
                setState(() {
                  depan = SearchController.text;
                });
              },
              child: Text("Submit"),
            ),
          ),
          const SizedBox(height: 40),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Hasil Pencarian",
                  style: TextStyle(fontSize: 17, color: Colors.black))),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 15, top: 10),
            margin: const EdgeInsets.fromLTRB(30, 5, 30, 30),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(depan, style: TextStyle()),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Learning Path",
                  style: TextStyle(fontSize: 17, color: Colors.black))),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 15, top: 10),
            margin: const EdgeInsets.fromLTRB(30, 5, 30, 30),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('$Selected', style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Bahasa Pemrograman",
                  style: TextStyle(fontSize: 17, color: Colors.black))),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 15, top: 10),
            margin: const EdgeInsets.fromLTRB(30, 5, 30, 30),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text('$Selected1', style: TextStyle(fontWeight: FontWeight.w400)),
          )
        ]));
  }
}
