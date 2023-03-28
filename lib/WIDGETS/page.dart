import 'package:flutter/material.dart';

class PAGEVIEWWIDGET extends StatefulWidget {
  const PAGEVIEWWIDGET({super.key});

  @override
  State<PAGEVIEWWIDGET> createState() => _PAGEVIEWWIDGETState();
}

class _PAGEVIEWWIDGETState extends State<PAGEVIEWWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.orangeAccent,
            child: const Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: const Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 100),
              ),
            ),
          )
        ],
      ),
    );
  }
}
