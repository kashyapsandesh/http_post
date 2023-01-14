import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/post_model.dart';

var baseUrl = "https://dummyjson.com";
getposts() async {
  var url = Uri.parse("$baseUrl/products");
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = postModelFromJson(res.body);
      print(res.body);
      return data!.products;
      ;
      print(data.products);
    } else {
      print("Error");
    }
  } catch (e) {
    print(e.toString());
  }
}

postData() async {
  var url = Uri.parse("$baseUrl/products/add");
  var data = {
    "title": "Sandesh Ghimire",
    "price": 300.toString(),
  };

  var post = await http.post(url, body: data);
  try {
    if (post.statusCode == 200) {
      var jsonData = jsonDecode(post.body);
      print(jsonData);
    } else {
      print("Error");
    }
  } catch (e) {
    print(e.toString());
  }
}
