import 'package:flutter/material.dart';

class AppBarClass extends StatelessWidget {
  const AppBarClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Material app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uso del AppBar"),
            //Iconos con acciones
            actions: const <Widget>[
              IconButton(onPressed: _add, icon: Icon(Icons.add)),
              IconButton(onPressed: _remove, icon: Icon(Icons.remove))
            ],
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ,
            //Icono hacia atras
            leading: IconButton(onPressed: _add, icon: Icon(Icons.arrow_back)) ,
          ),
          body: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/columnclass");
              },
              icon: const Icon(Icons.arrow_circle_right),
              iconSize: 80,
              color: Colors.deepPurple, ),
          ),
        ));
  }
}

void _add() {
  print("Add");
}

_remove(){
  print("Remove");
}
