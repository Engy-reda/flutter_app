import 'package:flutter/material.dart';

import 'card.dart';

class SignIn extends StatefulWidget {
  List<String> imgs = [
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
    "https://picsum.photos/200/300/?blur"
  ];
  @override
  _State createState() => _State();
}

class _State extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: ListView(
        children: [
          MyCard(
            text: "hi",
            imgLink: "https://picsum.photos/seed/picsum/200/300",
          )
        ],
      ),
    );
  }
}
