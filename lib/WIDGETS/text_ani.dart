import 'package:flutter/material.dart';

class TextANI extends StatefulWidget {
  const TextANI({super.key});

  @override
  State<TextANI> createState() => _TextANIState();
}

class _TextANIState extends State<TextANI> {
  bool _first = true;
  double _fontsize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("WELCOME"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              child: Text("Flutter"),
              style: TextStyle(
                  color: _color,
                  fontSize: _fontsize,
                  fontWeight: FontWeight.bold),
              duration:const Duration(milliseconds: 300),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _fontsize = _first ? 90 : 60;
                  _color = _first ? Colors.blue : Colors.red;
                  _first = !_first;
                });
              },
              child:const Text("Switch"))
        ],
      ),
    );
  }
}
