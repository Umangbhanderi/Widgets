import 'package:flutter/material.dart';

class CircleAVTAR extends StatefulWidget {
  const CircleAVTAR({super.key});

  @override
  State<CircleAVTAR> createState() => _CircleAVTARState();
}

class _CircleAVTARState extends State<CircleAVTAR> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        radius: 55,
      ),
    );
  }
}
