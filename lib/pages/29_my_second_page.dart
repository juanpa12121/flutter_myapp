import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Obtener argumentos del Widget my_firts_page
    final name = ModalRoute.of(context)!.settings.arguments as SecondPageArguments?;
    SecondPageArguments arguments = ModalRoute.of(context)!.settings.arguments as SecondPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Hello ${arguments.name}", style: TextStyle(fontSize: 20,)),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Alineado vertical
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go back!")),
            Text(arguments.name.toString()),
            Text(arguments.lastName.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/home");
        },
        child: Text(name.toString()),
      )
    );
  }
}

class SecondPageArguments {
  final String? name;
  final String? lastName;

  SecondPageArguments(this.name, this.lastName);
}
