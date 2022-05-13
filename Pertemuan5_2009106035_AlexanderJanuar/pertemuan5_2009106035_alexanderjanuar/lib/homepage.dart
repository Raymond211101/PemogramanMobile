import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var mySnackBar = new SnackBar(
    content: Text("Ini Snackbar"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child : ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          }, child: Text("Tombol Snackbar"),
        )
      ),
      
    );
  }
}