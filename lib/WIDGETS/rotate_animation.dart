import 'package:flutter/material.dart';

class RotateANIMATIONWIDGET extends StatefulWidget {
  const RotateANIMATIONWIDGET({super.key});

  @override
  State<RotateANIMATIONWIDGET> createState() => _RotateANIMATIONWIDGETState();
}

class _RotateANIMATIONWIDGETState extends State<RotateANIMATIONWIDGET> {
  double _turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: _turns,
                duration:const Duration(seconds: 1),
                child: FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _turns += 1 / 4;
                });
              },
              child: Text("Rotate Logo"),
              style:
                  ElevatedButton.styleFrom(foregroundColor: Colors.amberAccent),
            ),
          ],
        ),
      ),
    );
  }
}
