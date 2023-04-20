import 'package:flutter/material.dart';
import 'package:flutter_myapp/pages/29_my_second_page.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  //Definir controladores
  late TextEditingController nameTextController = TextEditingController();
  late TextEditingController lastNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Route"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //Alineado vertical
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
                controller: nameTextController,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                ),
                controller: lastNameTextController,
              ),
              ElevatedButton(
                  onPressed: () {
                    _showSecondPage(context);
                  },
                  child: const Text("Open second page")),
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.pushNamed(context, "/my_second_page",
        arguments: SecondPageArguments(
            nameTextController.text, lastNameTextController.text));
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    nameTextController.dispose();
    lastNameTextController.dispose();
    super.dispose();
  }
}
