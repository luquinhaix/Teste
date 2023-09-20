import 'package:flutter/material.dart';
import 'package:meu_teste_facul/segunda_tela.dart';
import 'segunda_tela.dart';

class AcessoTela extends StatefulWidget {
  @override
  _AccessFormState createState() => _AccessFormState();
}

class _AccessFormState extends State<AcessoTela> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _accessTypeController = TextEditingController();

  void _navigateToSecondScreen(BuildContext context) {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String accessType = _accessTypeController.text;

    if (name.isNotEmpty && email.isNotEmpty && accessType.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SegundaTela(
            name: name,
            email: email,
            accessType: accessType,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Revise os dados de Login'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Nome'),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'E-mail'),
          ),
          TextField(
            controller: _accessTypeController,
            decoration: InputDecoration(labelText: 'Tipo de Acesso'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _navigateToSecondScreen(context);
            },
            child: Text('Acessar'),
          ),
        ],
      ),
    );
  }
}
