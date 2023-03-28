import 'package:flutter/material.dart';

class PositionedWIDGET extends StatefulWidget {
  const PositionedWIDGET({super.key});

  @override
  State<PositionedWIDGET> createState() => _PositionedWIDGETState();
}

class _PositionedWIDGETState extends State<PositionedWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLUTTER"),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              height: 200,
              width: 200,
              child: Image.network(
                "https://tinyurl.com/95ncjeuu",
                width: 2550,
              ),
            ),
            Positioned(
              height: 600,
              width: 1200,
              child: Image.network(
                "https://tinyurl.com/22yj4f66",
                width: 2550,
              ),
            ),
            Positioned(
              height: 1000,
              width: 2200,
              child: Image.network(
                "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png",
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
