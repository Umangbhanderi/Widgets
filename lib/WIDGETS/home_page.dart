import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool change = false;
  bool changeColor = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: changeColor ? Colors.black : Colors.white,
      body: Stack(
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                change = !change;
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: AnimatedAlign(
                onEnd: () {
                  setState(() {
                    changeColor = !changeColor;
                    isVisible = !isVisible;
                  });
                },
                curve: Curves.decelerate,
                alignment:
                    change ? Alignment.topCenter : Alignment.bottomCenter,
                duration:const Duration(seconds: 2),
                child: Container(
                  height: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child:const Center(
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
