import 'package:flutter/material.dart';

class Imgi extends StatefulWidget {
  @override
  _ImgiState createState() => _ImgiState();
}

class _ImgiState extends State<Imgi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: ListView(
        children: [
          Image.network('https://picsum.photos/200/300?grayscale'),
        ],
      ),
    );
  }
}
