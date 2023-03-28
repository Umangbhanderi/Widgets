import 'package:flutter/material.dart';

class TABBARWIDGET extends StatefulWidget {
  const TABBARWIDGET({super.key});

  @override
  State<TABBARWIDGET> createState() => _TABBARWIDGETState();
}

class _TABBARWIDGETState extends State<TABBARWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("FLUTTER"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.orangeAccent,
                child: Icon(Icons.home),
              ),
              Container(
                color: Colors.redAccent,
                child: Icon(Icons.settings),
              ),
              Container(
                color: Colors.greenAccent,
                child: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
