import 'package:flutter/material.dart';

class GRIDWIDGET extends StatefulWidget {
  const GRIDWIDGET({super.key});

  @override
  State<GRIDWIDGET> createState() => _GRIDWIDGETState();
}

class _GRIDWIDGETState extends State<GRIDWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) => GridTile(
          header: GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.person),
            title: Text("Flutter"),
            trailing: Icon(Icons.menu),
          ),
          child: Image.network(
            "https://tinyurl.com/95ncjeuu",
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            leading: Icon(Icons.favorite),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}
