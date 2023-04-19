import 'package:flutter/material.dart';

class ScaffoldClass extends StatelessWidget {
  const ScaffoldClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Uso del Scaffold"),
        ),
        body: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/appbar");
              },
              icon: const Icon(Icons.arrow_forward_sharp),
              iconSize: 50,
              color: Colors.blue, ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
