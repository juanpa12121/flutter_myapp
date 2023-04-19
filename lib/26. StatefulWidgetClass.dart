import 'dart:async';

import 'package:flutter/material.dart';

class StatefulWidgetClass extends StatefulWidget {
  const StatefulWidgetClass({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetClass> createState() => _StatefulWidgetClassState();
}

class _StatefulWidgetClassState extends State<StatefulWidgetClass> {
  String name = "Marvin";
  double progressValue = 0.0;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material app",
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(fontSize: 30),
            ),
            LinearProgressIndicator(value: progressValue),
            Switch(value: switchValue, onChanged: (value){
              setState(() {
                switchValue = value;
              });
            })
          ],
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: changeName,
            child: const Icon(Icons.refresh)),
      ),
    );
  }

  //Metodo para cambiar el estado
  void changeName() {
    setState(() {

      if(name == "Marvin"){
        name = "Ossiel";
      }else{
        name = "Marvin";
      }
      progressValue += 0.01;
    });
  }

  //Ciclo de vida
  //Antes de dibujar por primera vez
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (value) {
      changeName();
    });
  }

  //Se ejecuta una vez que se destruye el widget
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
