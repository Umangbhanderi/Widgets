import 'package:flutter/material.dart';

class ChoiceChipWIDGET extends StatefulWidget {
  const ChoiceChipWIDGET({super.key});

  @override
  State<ChoiceChipWIDGET> createState() => _ChoiceChipWIDGETState();
}

class _ChoiceChipWIDGETState extends State<ChoiceChipWIDGET> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ChoiceChip(
          label:const Text("Choice Chip"),
          selected: isSelected,
          selectedColor: Colors.orangeAccent,
          onSelected: (newState){
            setState(() {
              isSelected = newState;
            });
          },
        ),
      ),
    );
  }
}
