import 'package:flutter/material.dart';

class AUTOCOMP extends StatefulWidget {
  const AUTOCOMP({super.key});

  @override
  State<AUTOCOMP> createState() => _AUTOCOMPState();
}

class _AUTOCOMPState extends State<AUTOCOMP> {
  static List<String> listItem = <String>[
    "apple",
    "banana",
    "vagies",
    "melon"
    "cat",
    "dog"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == "") {
            return const Iterable<String>.empty();
          }
          return listItem.where(
            (String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            },
          );
        },
        onSelected: (String item) {
          print("the $item was selected");
        },
      ),
    );
  }
}
