import 'package:flutter/material.dart';

class GraggableLIST extends StatefulWidget {
  const GraggableLIST({super.key});

  @override
  State<GraggableLIST> createState() => _GraggableLISTState();
}

class _GraggableLISTState extends State<GraggableLIST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.orange,
          child: ListView.builder(
            controller: scrollController,
            itemCount: 25,
            padding:const EdgeInsets.symmetric(vertical: 15),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
          ),
        );
      }),
    );
  }
}
