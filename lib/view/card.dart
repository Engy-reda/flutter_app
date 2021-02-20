import 'package:flutter/material.dart';

import 'img.dart';
import 'img1.dart';
import 'img2.dart';

class MyCard extends StatefulWidget {
  String imgLink;
  String text;
  MyCard({this.imgLink, this.text});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: new Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 36.0,
                ),
              ),
              Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    'Introducing Flutter',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  )),
            ],
          ),
          Row(//ROW 2
              children: [
            Container(
              color: Colors.orange,
              margin: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Img()),
                  );
                },
                child: Image.network(
                  widget.imgLink,
                  width: 100,
                  height: 110,
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Imgi()),
                  );
                },
                child: Image.network(
                  widget.imgLink,
                  width: 100,
                  height: 110,
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Imgg()),
                  );
                },
                child: Image.network(
                  widget.imgLink,
                  width: 100,
                  height: 110,
                ),
              ),
            )
          ]),
          Row(// ROW 3
              children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(2.0),
              child: Icon(
                Icons.thumb_up,
                color: Colors.pink,
                size: 30.0,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(2.0),
              child: Text(
                'like',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(2.0),
              child: Icon(
                Icons.comment,
                color: Colors.blue,
                size: 36.0,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(25.0),
              child: Text(
                'comments',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ]),
        ])),
      ),
    );
  }
}
