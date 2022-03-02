import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/components/card.message.dart';

class MensagemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          CardMessage(),
          CardMessage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
