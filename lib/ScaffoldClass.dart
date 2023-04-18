import 'package:flutter/material.dart';

void main() {
  runApp(const ScaffoldClass());
}

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
        body: Center(),
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
