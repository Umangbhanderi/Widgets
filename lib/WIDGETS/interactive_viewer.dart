import 'package:flutter/material.dart';

class InteractiveViewers extends StatefulWidget {
  const InteractiveViewers({super.key});

  @override
  State<InteractiveViewers> createState() => _InteractiveViewersState();
}

class _InteractiveViewersState extends State<InteractiveViewers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title:const Text("main appbar"),
      ),
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin:const EdgeInsets.all(
          double.infinity,
        ),
        child: Scaffold(
          appBar: AppBar(
            title:const Text("interactive appbar"),
          ),
        ),
      ),
    );
  }
}
