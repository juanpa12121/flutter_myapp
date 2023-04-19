import 'package:flutter/material.dart';

class RowClass extends StatelessWidget {
  const RowClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Uso de Row"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Activar sonido"),
                  Switch(value: true, onChanged: (value) {})
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Habilitar el uso de la camara")),
                  Switch(value: true, onChanged: (value) {})
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(height: 50, width: 50, color: Colors.deepPurple),
                  Container(height: 50, width: 50, color: Colors.amberAccent),
                  Expanded(
                      child: Container(height: 100, width: 50, color: Colors.black)),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.deepOrange),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/marginpadding");
                },
                icon: const Icon(Icons.arrow_forward_sharp),
                iconSize: 50,
                color: Colors.blueGrey, ),
            ],
          ),
        ),
      ),
    );
  }
}
