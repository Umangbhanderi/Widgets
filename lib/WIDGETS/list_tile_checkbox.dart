import 'package:flutter/material.dart';

class ListTileCheckBox extends StatefulWidget {
  const ListTileCheckBox({super.key});

  @override
  State<ListTileCheckBox> createState() => _ListTileCheckBoxState();
}

class _ListTileCheckBoxState extends State<ListTileCheckBox> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CheckboxListTile(
          value: _isChecked,
          title:const Text("Checkedbox List Tile"),
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle:const Text("this is subtitle"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
