import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoMENU extends StatefulWidget {
  const CupertinoMENU({super.key});

  @override
  State<CupertinoMENU> createState() => _CupertinoMENUState();
}

class _CupertinoMENUState extends State<CupertinoMENU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            child: Image.network(
                "https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png"),
            actions: [
              CupertinoContextMenuAction(
                child:const Text("action One"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child:const Text("action Two"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
