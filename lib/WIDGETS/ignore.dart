import 'package:flutter/material.dart';

class IgnoreWIDGET extends StatefulWidget {
  const IgnoreWIDGET({super.key});

  @override
  State<IgnoreWIDGET> createState() => _IgnoreWIDGETState();
}

class _IgnoreWIDGETState extends State<IgnoreWIDGET> {
  bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ignore = !ignore;
                });
              },
              child: Text(
                ignore ? "Blocked" : "All Good",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: ignore ? Colors.red : Colors.green,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            IgnorePointer(
              ignoring: ignore,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Click Me!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
