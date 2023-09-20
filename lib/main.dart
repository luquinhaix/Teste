import 'package:flutter/material.dart';
import 'acesso_tela.dart';
import 'segunda_tela.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraTela(),
    );
  }
}

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Acesso'),
      ),
      body: AcessoTela(),
    );
  }
}
