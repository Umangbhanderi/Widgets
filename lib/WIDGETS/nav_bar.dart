import 'package:flutter/material.dart';

class NavIBAR extends StatefulWidget {
  const NavIBAR({super.key});

  @override
  State<NavIBAR> createState() => _NavIBARState();
}

class _NavIBARState extends State<NavIBAR> {
  int currentIndex = 0;
  static const List body = [
    Icon(
      Icons.home,
      size: 50,
    ),
    Icon(
      Icons.search,
      size: 50,
    ),
    Icon(
      Icons.person,
      size: 50,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Center(
        child: body.elementAt(currentIndex),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.person), label: "Person"),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
