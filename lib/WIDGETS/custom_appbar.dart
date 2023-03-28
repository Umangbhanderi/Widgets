import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(80.0),
        child: Container(
          height: 120,
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
              child: Center(
            child: ListTile(
              title:const Text("Flutter Custom Appbar"),
              trailing: IconButton(
                onPressed: () {},
                icon:const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
