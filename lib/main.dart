import 'package:flutter/material.dart';

void main() => runApp(const MiContenedorApp());

class MiContenedorApp extends StatelessWidget {
  const MiContenedorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo 18 Container"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
          backgroundColor: const Color(0xffffbbb6),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Camila Rodriguez Ruiz\nMatricula: 22308051281300',
                textAlign: TextAlign.center, // Centra el texto
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              // Primer contenedor
              Container(
                //to align its child
                child: MyCardContainer(),
              ),

              SizedBox(height: 20), // Espacio entre los contenedores

              // Segundo contenedor
            ],
          ),
        ),
      ),
    );
  } // fin widgets
} // fin clase MiContenedorApp

class MyCardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: new LinearGradient(
          colors: [
            Color(0xff72dcfd),
            Color(0xff256ac5),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.25, 0.90],
        ),
      ),
      alignment: Alignment.centerLeft, //to align its child
      padding: EdgeInsets.all(20),
    );
  }
}
