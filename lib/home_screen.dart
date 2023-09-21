import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_api_task3/Models/posts_models_response.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModelResponse> postList = [];

  Future<List<PostsModelResponse>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      postList.clear;
      for (Map i in data) {
        postList.add(PostsModelResponse.fromJson(i));
      }

      return postList;
    } else {
      return postList;
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   // Call the getPostApi() method when the widget is initialized
  //   getPostApi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Task'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<PostsModelResponse>>(
              future: getPostApi(), // Provide the future value for the builder
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                postList[index].title.toString(),
                              ),
                              Text(
                                'Description:\n',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(postList[index].body.toString())
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text('No data available');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
