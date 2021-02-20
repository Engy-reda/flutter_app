import 'package:flutter/material.dart';

class Imgg extends StatefulWidget {
  @override
  _ImggState createState() => _ImggState();
}

class _ImggState extends State<Imgg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: ListView(
        children: [
          Image.network('https://picsum.photos/seed/picsum/200/300'),
        ],
      ),
    );
  }
}
