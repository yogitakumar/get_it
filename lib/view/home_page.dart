import 'package:flutter/material.dart';
import 'package:get_it_demo/domain/model/posts.dart';
import 'package:get_it_demo/domain/posts_controller.dart';

import '../locator.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  Posts? post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: post != null
            ? Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Title ${post!.fact}",
                          style: TextStyle(fontSize: 36),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 300,
                          width: 300,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Image.network(post!.image),
                        ),
                        SizedBox(height: 8),
                        Text("Body: ${post!.image}"),
                      ],
                    ),
                  ),
                ),
              )
            : Center(child: Text("No Post loaded yet")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () async {
          Posts posts = await serviceLocator.get<PostsDomainController>().getNextPost();
          setState(() {
            post = posts;
          });
        },
      ),
    );
  }
}
