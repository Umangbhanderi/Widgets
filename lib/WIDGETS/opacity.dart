import 'package:flutter/material.dart';

class OPACITYWIDGET extends StatefulWidget {
  const OPACITYWIDGET({super.key});

  @override
  State<OPACITYWIDGET> createState() => _OPACITYWIDGETState();
}

class _OPACITYWIDGETState extends State<OPACITYWIDGET> {
  double opacitylevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacitylevel,
              duration: Duration(seconds: 2),
              child: FlutterLogo(
                size: 500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacitylevel = opacitylevel == 0 ? 1.0 : 0.0;
                });
              },
              child: Text("Fade Logo"),
            ),
          ],
        ),
      ),
    );
  }
}
