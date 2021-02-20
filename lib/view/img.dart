import 'package:flutter/material.dart';

class Img extends StatefulWidget {
  @override
  _ImgState createState() => _ImgState();
}

class _ImgState extends State<Img> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: ListView(
        children: [
          Image.network('https://picsum.photos/200/300/?blur'),
        ],
      ),
    );
  }
}
