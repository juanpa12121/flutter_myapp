import 'package:flutter/material.dart';

class ColorsClass extends StatelessWidget {
  const ColorsClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Colors"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/my_first_page");
                  },
                  icon: const Icon(Icons.looks_one)),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/my_second_page");
                  },
                  icon: const Icon(Icons.looks_two)),

            ],
          ),
          body: Center(
            child: Container(
              //color: Colors.blue[800],
              color: Color.fromARGB(255, 29, 209, 0),
              height: 300,
              width: 300,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "/listviewclass");
            },
            child: const Icon(Icons.arrow_forward_sharp),
          )),
    );
  }
}
