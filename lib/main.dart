import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        body: const Center(
          child: Text("Hola, bienvenido a Flutter",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                backgroundColor: Colors.black
              )
          ),
        ));
  }
}
