import 'package:flutter/material.dart';

/*
* Stateless*/
void main() {
  // Para iniciar o app
  // Precisa passar um "MaterialApp para adicionar widgets
  runApp(MaterialApp(title: "Contador de pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar";

  void _changePeople(int delta) {
    // Atualiza o valor e desenha a tela
    // Somente das partes modificadas
    setState(() {
      _people += delta;

      if(_people < 0) {
        _infoText = "Mundo invertido";
      } else if (_people <= 10) {
        _infoText = "Pode entrar";
      } else {
        _infoText = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Filhos da coluna (Objetos dentro dela)
          children: <Widget>[
            Text(
              // Texto a ser impresso na tela
              "Pessoas: $_people",
              // Stilo do texto
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    // Child sò pode colocar 1
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    // Child sò pode colocar 1
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              // Texto a ser impresso na tela
              "$_infoText",
              // Stilo do texto
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        ),
      ],
    );
  }
}
