import 'package:flutter/material.dart';

class ColumnClass extends StatelessWidget {
  const ColumnClass();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Uso del column"),
          ),
          body: SizedBox( //Para poner una columna con el 100% del ancho
            width: double.infinity,
            child: Column(
              //Configuracion importante para posicionar los widgets del column
              mainAxisAlignment: MainAxisAlignment.center,
              //Alineado vertical
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //Alineado horizontal
              children: <Widget>[
                Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
                Text("Hola, estoy en una columna"),
                Image.network(
                  "https://media.tenor.com/7uKoZuX9f8UAAAAS/flutterguide-flutter.gif",
                  height: 100,
                ),
                Image.network(
                  "https://www.mobileappdaily.com/public/uploads/mad_8473c4dd3e.gif",
                  height: 100,
                ),
                Image.network(
                  "https://media.tenor.com/7uKoZuX9f8UAAAAS/flutterguide-flutter.gif",
                  height: 100,
                ),
                Image.network(
                  "https://www.mobileappdaily.com/public/uploads/mad_8473c4dd3e.gif",
                  height: 100,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/rowclass");
                  },
                  icon: const Icon(Icons.arrow_forward_sharp),
                  iconSize: 50,
                  color: Colors.deepOrange, ),
              ],
            ),
          )),
    );
  }
}
