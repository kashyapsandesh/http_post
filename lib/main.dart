import 'package:flutter/material.dart';
import 'package:postmethod/services/api_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Api Post Method",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApiPost(),
    );
  }
}

class ApiPost extends StatefulWidget {
  const ApiPost({super.key});

  @override
  State<ApiPost> createState() => _ApiPostState();
}

class _ApiPostState extends State<ApiPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Post Method"),
      ),
      body: Container(
        child: Center(
          child: Text("HTTP POST METHOD()"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postData();
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
