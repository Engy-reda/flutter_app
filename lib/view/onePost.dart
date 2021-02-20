import 'package:flutter/material.dart';

class DetailsPost extends StatefulWidget {
  String text;
  DetailsPost({this.text});
  @override
  _DetailsPostState createState() => _DetailsPostState();
}

class _DetailsPostState extends State<DetailsPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details of post"),
      ),
      body: Container(
        color: Colors.limeAccent,
        margin: EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Text(
              widget.text,
              style: TextStyle(color: Colors.black, fontSize: 30),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

//        Card(
//         child: new Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Center(
//               child: new Column(children: <Widget>[
//             Row(
//               //ROW 1
//               children: [
//                 Container(
//                   color: Colors.white,
//                   margin: EdgeInsets.all(5.0),
//                   child: Icon(
//                     Icons.favorite,
//                     color: Colors.pink,
//                     size: 36.0,
//                   ),
//                 ),
//                 Container(
//                     color: Colors.white,
//                     margin: EdgeInsets.all(15.0),
//                     child: Text(
//                       'Introducing Flutter',
//                       style: TextStyle(color: Colors.green, fontSize: 20),
//                     )),
//               ],
//             ),
//             Row(//ROW 2
//                 children: [
//               Container(
//                   color: Colors.white,
//                   margin: EdgeInsets.all(25.0),
//                   width: 150,
//                   child:
//             ]),
//             Row(// ROW 3
//                 children: [
//               Container(
//                 color: Colors.white,
//                 margin: EdgeInsets.all(2.0),
//                 child: Icon(
//                   Icons.thumb_up,
//                   color: Colors.pink,
//                   size: 30.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 margin: EdgeInsets.all(2.0),
//                 child: Text(
//                   'like',
//                   style: TextStyle(color: Colors.black, fontSize: 20),
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 margin: EdgeInsets.all(2.0),
//                 child: Icon(
//                   Icons.comment,
//                   color: Colors.blue,
//                   size: 36.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 margin: EdgeInsets.all(25.0),
//                 child: Text(
//                   'comments',
//                   style: TextStyle(color: Colors.black, fontSize: 20),
//                 ),
//               ),
//             ]),
//           ])),
//         ),
//       ),
//     );
//   }
// }
