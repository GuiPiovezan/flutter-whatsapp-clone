import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/cadastro.view.dart';

import 'login.view.dart';
import 'mensagem.view.dart';

class App extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: auth.currentUser == null ? LoginView() : MensagemView(),
      routes: {
        '/mensagens': (context) => MensagemView(),
        '/login': (context) => LoginView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
