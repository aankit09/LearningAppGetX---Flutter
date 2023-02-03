import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 20.0, right: 10, left: 10),
        child: const Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. , Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
