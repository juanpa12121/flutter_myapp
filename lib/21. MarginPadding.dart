import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Márgenes y paddings en container"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: const Text(
                "-----",
                style: TextStyle(backgroundColor: Colors.black, fontSize: 60),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "/colorsclass");
            },
            child: const Icon(Icons.arrow_forward_sharp),
          )),
    );
  }
}
