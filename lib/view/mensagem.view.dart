import 'package:flutter/material.dart';

class MensagemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          Column(
            children: [
              Text("Nome"),
              Text("Mensagem"),
            ],
          ),
          Column(
            children: [
              Text("18:00"),
              Text("2"),
            ],
          ),
        ],
      ),
    );
  }
}
