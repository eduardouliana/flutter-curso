import 'package:flutter/material.dart';

void main() {
  // Para iniciar o app
  // Precisa passar um "MaterialApp para adicionar widgets
  runApp(MaterialApp(
    title: "Contador de pessoas",
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // Filhos da coluna (Objetos dentro dela)
      children: <Widget>[
        Text(
          // Texto a ser impresso na tela
          "Pessoas: 0",
          // Stilo do texto
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                // Child sò pode colocar 1
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Text(
          // Texto a ser impresso na tela
          "Pode entrar",
          // Stilo do texto
          style: TextStyle(
              color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0),
        )
      ],
    ),
  ));
}
