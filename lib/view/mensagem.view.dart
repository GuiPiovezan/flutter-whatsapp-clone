import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/mensagem.model.dart';
import 'package:whatsapp_clone/view/components/card.message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var mensagens = [
  MensagemModel("", "Fulado de ciclano", "Opa, bão?", DateTime.now(),
      quantidadeNaoLida: 2),
  MensagemModel("", "beltrano", "Opa, bão?", DateTime.now(),
      quantidadeNaoLida: 6),
  MensagemModel("", "Batman", "To aqui cara", DateTime.now(),
      quantidadeNaoLida: 10),
];

class MensagemView extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: firestore.collection("mensagens").snapshots(),
        builder: (_, snapshot) {
          if (!snapshot.hasData) return const CircularProgressIndicator();

          if (snapshot.hasError) return const Text("Erro ao consultar dados");

          return ListView.separated(
            separatorBuilder: (_, i) => const Divider(),
            itemBuilder: (_, index) => CardMessage(
              MensagemModel.fromMap(snapshot.data!.docs[index].data()),
            ),
            itemCount: snapshot.data!.docs.length,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        elevation: 0,
        fixedColor: Colors.green,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[500],
        ),
        showSelectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications),
            label: "Status",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_outlined),
            label: "Phone",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
