import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:learning_app/home/home/new_courses.dart';
import 'package:learning_app/model/postsmodel.dart';
import '../../utility/search.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data;
  Future<void> getUserData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text('Loading');
                } else {
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (contex, index) {
                        return Card(
                          child: Column(
                            children: [
                              NewCourses(
                                  title: 'name',
                                  value: data[index]['name'].toString()),
                              NewCourses(
                                  title: 'Username',
                                  value: data[index]['username'].toString()),
                              NewCourses(
                                  title: 'address',
                                  value: data[index]['address']['city']
                                      .toString()),
                              NewCourses(
                                  title: 'zipCode',
                                  value: data[index]['address']['zipcode']
                                      .toString()),
                              NewCourses(
                                  title: 'lat',
                                  value: data[index]['address']['geo']['lat']
                                      .toString()),
                              NewCourses(
                                  title: 'lng',
                                  value: data[index]['address']['geo']['lng']
                                      .toString()),
                            ],
                          ),
                        );
                      });
                  //Text(data[0]['name'].toString());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
