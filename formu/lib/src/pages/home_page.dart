import 'package:flutter/material.dart';
import 'package:formu/src/pages/formulario.dart';
import 'package:formu/widgets/icon_containers.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity, //Se ajusta al tamaño
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(0, 194, 23, 228),
            Color.fromARGB(0, 194, 23, 228)
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              //!Aqui se ubica el URL de una imagen
              const IconContainers(url: "images/pres.jpg"),
              Text(
                "Bienvenidos",
                style: TextStyle(
                  fontFamily: "PermamentMarker",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Text(
                "Realiza tu prestamo aqui",
                style: TextStyle(
                  fontFamily: "PermamentMarker",
                  fontSize: 30.0,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              SizedBox(
                width: 300.0,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => formulario());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "Formulario",
                    style: TextStyle(
                      color: Colors.black26,
                      fontFamily: "FreedokaOne",
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}