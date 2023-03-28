import 'package:flutter/material.dart';

class DeleteItem extends StatefulWidget {
  const DeleteItem({super.key});

  @override
  State<DeleteItem> createState() => _DeleteItemState();
}

class _DeleteItemState extends State<DeleteItem> {
  List<int> items = List<int>.generate(100, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("WELCOME"),
      ),
      // backgroundColor: Colors.black54,
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          padding:const EdgeInsets.symmetric(vertical: 15),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.red,
                child:const Icon(
                  Icons.delete,
                ),
              ),
              key: ValueKey<int>(
                items[index],
              ),
              onDismissed: (DismissDirection direction) {
                setState(
                  () {
                    items.removeAt(index);
                  },
                );
              },
              child: ListTile(
                title: Text("Index ${items[index]}"),
              ),
            );
          },
        ),
      ),
    );
  }
}
