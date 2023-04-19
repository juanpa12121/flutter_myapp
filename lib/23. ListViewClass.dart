import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  const ListViewClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Material App", home: ImagesApp());
  }
}

class ImagesApp extends StatelessWidget {
  List<String> names = [
    "Juan",
    "Mario",
    "Marta",
    "Yosselyn",
    "Luis",
    "Pedro",
    "Maria",
    "Jose",
    "Luisa",
    "Pedro",
    "Maria",
    "Jose",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              final name = names[index];
              return ListTile(
                  title: Text(name),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print("Tapped on item $index");
                  });
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          child: const Icon(Icons.arrow_forward_sharp),
        ),
      ),
    );
  }
}
