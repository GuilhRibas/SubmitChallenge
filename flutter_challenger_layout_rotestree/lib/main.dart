import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: PrimeiraTela(),
  ));
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('BARBER CHILL'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          ElevatedButton(
            child: Text('Serviços'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaRota()),
              );
            },
          ),
          ElevatedButton(
            child: Text('Sobre'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TerceiraRota()),
              );
            },
          )
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BARBER CHILL'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Mapa"),
            ),
            ListTile(
              leading: Icon(Icons.add_business),
              title: Text("Marcar Horário"),
            ),
          ],
        ));
  }
}

class TerceiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('BARBER CHILL'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            Text(
              "Barbeiro nascido ramo.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                backgroundColor: Colors.lightBlue,
              ),
            )
          ],
        ));
  }
}
