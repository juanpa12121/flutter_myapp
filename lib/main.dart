import 'package:flutter/material.dart';
import 'package:flutter_myapp/19.%20ColumnClass.dart';
import 'package:flutter_myapp/20.%20RowClass.dart';
import 'package:flutter_myapp/21.%20MarginPadding.dart';
import 'package:flutter_myapp/22.%20ColorsClass.dart';
import 'package:flutter_myapp/23.%20ListViewClass.dart';
import 'package:flutter_myapp/26.%20StatefulWidgetClass.dart';

void main() {
  //runApp(const MyApp());
  //runApp(const ScaffoldClass());
  //runApp(const AppBarClass());
  //runApp(const ColumnClass());
  //runApp(const RowClass());
  //runApp(const MarginPadding());
  //runApp(const ColorsClass());
  //runApp(const ListViewClass());
  runApp(const StatefulWidgetClass());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //Constructor
  const MyHomePage();

  @override
  Widget build(BuildContext context) {
    //Widget que nos permite acomodar diferentes elementos en la pantalla (navbar, body, etc)
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hola, bienvenido a Flutter",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            //Agregar un espacio entre el texto y la imagen
            Image.network(
              //flutter image
              "https://www.alisco-it.com/wp-content/uploads/2022/01/Flutter_Featured_Logo.png",
              width: 200,
              height: 200,
            ),
            IconButton(
                onPressed: () {
                  print("hola");
                },
                icon: Icon(Icons.close_rounded),
                iconSize: 50,
                color: Colors.blue),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}
