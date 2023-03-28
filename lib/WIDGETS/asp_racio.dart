import 'package:flutter/material.dart';

class ASPRatio extends StatefulWidget {
  const ASPRatio({super.key});

  @override
  State<ASPRatio> createState() => _ASPRatioState();
}

class _ASPRatioState extends State<ASPRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("WELCOME"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.yellowAccent,
            width: double.infinity,
            height: 200,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
