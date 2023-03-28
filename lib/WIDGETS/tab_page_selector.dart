import 'package:flutter/material.dart';

List<Widget> widgets = [
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TABPAGESELECTORWIDGET extends StatefulWidget {
  const TABPAGESELECTORWIDGET({super.key});

  @override
  State<TABPAGESELECTORWIDGET> createState() => _TABPAGESELECTORWIDGETState();
}

class _TABPAGESELECTORWIDGETState extends State<TABPAGESELECTORWIDGET>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(
      length: widgets.length,
      vsync: this,
      initialIndex: _index,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            child:  Icon(Icons.navigate_next),
            hoverElevation: 0,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}
