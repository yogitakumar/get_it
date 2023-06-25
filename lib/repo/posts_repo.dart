import 'dart:convert';
import 'package:http/http.dart' as http;
import '../domain/model/posts.dart';

class PostsRepo {
  Future<Posts> getPost() async {
    http.Response response = await http.get(Uri.parse("https://some-random-api.ml/animal/dog"));
   final singlePostJson = jsonDecode(response.body);
   return Posts.fromJson(singlePostJson);
  }
}