import 'package:flutter/material.dart';

class GestureDetecWIDGET extends StatefulWidget {
  const GestureDetecWIDGET({super.key});

  @override
  State<GestureDetecWIDGET> createState() => _GestureDetecWIDGETState();
}

class _GestureDetecWIDGETState extends State<GestureDetecWIDGET> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _counter += 1;
          });
        },
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
