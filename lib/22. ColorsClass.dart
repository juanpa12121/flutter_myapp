import 'package:flutter/material.dart';

class ColorsClass extends StatelessWidget{

  const ColorsClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colors"),
        ),
        body: Center(
          child: Container(
            //color: Colors.blue[800],
            color: Color.fromARGB(255, 29, 209, 0),
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }

}