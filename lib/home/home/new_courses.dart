// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NewCourses extends StatelessWidget {
  String title, value;
  NewCourses({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text(title),
        Text(value)
      ],
    ),
    );
  }
}
