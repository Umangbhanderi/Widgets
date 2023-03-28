import 'package:flutter/material.dart';

class ALERTDIALOG extends StatefulWidget {
  const ALERTDIALOG({super.key});

  @override
  State<ALERTDIALOG> createState() => _ALERTDIALOGState();
}

class _ALERTDIALOGState extends State<ALERTDIALOG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Colse"),
                  ),
                ],
                title:const Text("Flutter Tutorial"),
                contentPadding:const EdgeInsets.all(20),
                content:const Text("This is the Alert Dailog box"),
              ),
            );
          },
          child: const Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
