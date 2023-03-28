import 'package:flutter/material.dart';

class EXPANDWIDGET extends StatefulWidget {
  const EXPANDWIDGET({super.key});

  @override
  State<EXPANDWIDGET> createState() => _EXPANDWIDGETState();
}

class _EXPANDWIDGETState extends State<EXPANDWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 200,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.orange,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
