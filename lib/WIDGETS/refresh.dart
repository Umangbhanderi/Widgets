import 'package:flutter/material.dart';

class REFRESHWIDGET extends StatefulWidget {
  const REFRESHWIDGET({super.key});

  @override
  State<REFRESHWIDGET> createState() => _REFRESHWIDGETState();
}

class _REFRESHWIDGETState extends State<REFRESHWIDGET> {
  List<String> items = [
    "Item 1",
    "Item 2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLUTTER"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(
            const Duration(seconds: 1),
          );
          int nextItem = items.length + 1;
          items.add("Item $nextItem");
          setState(() {});
        },
        // ignore: sort_child_properties_last
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(items[index]),
                tileColor: Colors.white24,
              ),
            )
          ),
        ),
        color: Colors.white,
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
