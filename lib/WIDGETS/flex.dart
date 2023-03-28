import 'package:flutter/material.dart';

class FLEXWIDGET extends StatefulWidget {
  const FLEXWIDGET({super.key});

  @override
  State<FLEXWIDGET> createState() => _FLEXWIDGETState();
}

class _FLEXWIDGETState extends State<FLEXWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.orange,
              height: 200,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.blue,
              height: 200,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
