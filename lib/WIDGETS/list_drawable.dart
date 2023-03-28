import 'package:flutter/material.dart';

class ListDrawable extends StatefulWidget {
  const ListDrawable({super.key});

  @override
  State<ListDrawable> createState() => _ListDrawableState();
}

class _ListDrawableState extends State<ListDrawable> {
  final List<int> items = List<int>.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Welcome"),
      ),
      body: ReorderableListView(
          children: List.generate(
              items.length,
              (index) => ListTile(
                    key: Key("$index"),
                    tileColor:
                        items[index].isOdd ? Colors.black54 : Colors.white30,
                    trailing:const Icon(Icons.drag_handle_sharp),
                    title: Text("Item ${items[index]}"),
                  )),
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          }),
    );
  }
}
