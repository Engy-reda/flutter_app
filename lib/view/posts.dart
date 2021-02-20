import 'package:demo/models/post.dart';
import 'package:demo/services/post.dart';
import 'package:flutter/material.dart';

import 'detailsPost.dart';
import 'onePost.dart';

class Posts extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Posts> {
  List<Post> postList = new List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostFormsServer();
  }

  getPostFormsServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Posts"),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: postList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsPost(text: postList[index].body),
                      ));
                },
                child: MyCard(
                  text: postList[index].title,
                ),
              );
            }));
  }
}
