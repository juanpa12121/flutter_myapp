import 'package:flutter/material.dart';
import 'package:flutter_myapp/pages/29_my_second_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Route"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showSecondPage(context);
            },
            child: const Text("Open second page")),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.pushNamed(context, "/my_second_page", arguments: "GO HOME");
  }
}
