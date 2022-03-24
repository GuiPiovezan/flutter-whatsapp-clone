import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/cadastro.view.dart';

import 'login.view.dart';
import 'mensagem.view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
