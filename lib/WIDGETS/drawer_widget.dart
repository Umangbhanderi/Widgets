import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("WELCOME"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            child:const Text(
              "Open Drawer",
            ),
          );
        }),
      ),
      endDrawer: Drawer(
        child: ListView(children: [const
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text(
              "this is the Header",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title:const Text("Item 1"),
            onTap: () {},
          ),
          ListTile(
            title:const Text("Item 2"),
            onTap: () {},
          )
        ]),
      ),
    );
  }
}
