import 'package:flutter/material.dart';

class POPUPMENU extends StatefulWidget {
  const POPUPMENU({super.key});

  @override
  State<POPUPMENU> createState() => _POPUPMENUState();
}

class _POPUPMENUState extends State<POPUPMENU> {
  String title = "First Item";
  String item1 = "First Item";
  String item2 = "Second Item";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        title: Text(title),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Text(item1),
              value: item1,
            ),
            PopupMenuItem(
              child: Text(item2),
              value: item2,
            ),
          ],
          onSelected: (String newValue) {
            setState(() {
              title = newValue;
            });
          },
        ),
      ),
    );
  }
}
