import 'package:flutter/material.dart';

class SegundaTela extends StatefulWidget {
  final String name;
  final String email;
  final String accessType;

  SegundaTela({
    required this.name,
    required this.email,
    required this.accessType,
  });

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SegundaTela> {
  bool showInfo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: UserInfoDisplay(
        name: widget.name,
        email: widget.email,
        accessType: widget.accessType,
        showInfo: showInfo,
        toggleInfo: () {
          setState(() {
            showInfo = !showInfo;
          });
        },
      ),
    );
  }
}

class UserInfoDisplay extends StatelessWidget {
  final String name;
  final String email;
  final String accessType;
  final bool showInfo;
  final VoidCallback toggleInfo;

  UserInfoDisplay({
    required this.name,
    required this.email,
    required this.accessType,
    required this.showInfo,
    required this.toggleInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showInfo) ...[
            Text('Nome: $name'),
            Text('E-mail: $email'),
            Text('Tipo de Acesso: $accessType'),
          ],
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: toggleInfo,
            child: Text(showInfo ? 'Ocultar informações' : 'Exibir informações'),
          ),
        ],
      ),
    );
  }
}
