import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numeroDadoEsquerda = 1;
  int numeroDadoDireita = 1;

  void alterarFacesDosDados() {
    setState(() {
      numeroDadoEsquerda = Random().nextInt(6) + 1;
      numeroDadoDireita = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('assets/images/dado$numeroDadoEsquerda.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('assets/images/dado$numeroDadoDireita.png'),
            ),
          ),
        ],
      ),
    );
  }
}