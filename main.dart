import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: SafeArea(
          child: Scaffold(
              body: Column(children: <Widget>[
        parchisWitget(context),
      ]))),
    );
  }


  Widget parchisWitget(BuildContext context) {
    const double size01 = 30;
    const double size02 = 30;

    Widget crearbotonblancos(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size01,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget crearbotonVerdes(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size01, 
              color: Color.fromARGB(255, 6, 146, 11),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget crearbotonIgual(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0), // fondo exterior negro
          child: Center(
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 6, 146, 11), // color del círculo
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: size01,
                    color: Colors.white, // texto blanco dentro del círculo verde
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    

    Widget crearbotonRojo(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size02,
              color: Color.fromARGB(255, 211, 4, 4),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    Widget crearbotonGrises(String text) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.all(2.0),
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: size02,
              color: Color.fromARGB(255, 165, 164, 164),
              fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }





    return Expanded(
      child: Column(
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              child: const Center(
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 146, 11),
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ),


        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonGrises("🕐"),
              crearbotonGrises("📏"),
              crearbotonGrises("√"),
              crearbotonVerdes("⌫"),

            ],
          )
        ), 

        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonRojo("C"),
              crearbotonVerdes("()"),
              crearbotonVerdes("%"),
              crearbotonVerdes("÷"),

            ],
          )
        ), 



        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonblancos("7"),
              crearbotonblancos("8"),
              crearbotonblancos("9"),
              crearbotonVerdes("X"),

            ],
          )
        ), 

        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonblancos("4"),
              crearbotonblancos("5"),
              crearbotonblancos("6"),
              crearbotonVerdes("—"),
            ],
          )
        ), 

        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonblancos("1"),
              crearbotonblancos("2"),
              crearbotonblancos("3"),
              crearbotonVerdes("+"),

            ],
          )
        ), 

        Expanded(
          child: Row(
            children: <Widget>[
              crearbotonblancos("+/-"),
              crearbotonblancos("0"),
              crearbotonblancos("."),
              crearbotonIgual("="),

            ],
          )
        ), 


      ],
    ));

    

  }
}
