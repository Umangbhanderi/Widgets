import 'package:flutter/material.dart';

class Transaction_Animation extends StatefulWidget {
  const Transaction_Animation({super.key});

  @override
  State<Transaction_Animation> createState() => _Transaction_AnimationState();
}

class _Transaction_AnimationState extends State<Transaction_Animation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.linearToEaseOut);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.horizontal,
            axisAlignment: 0,
            child: Center(
              child: Container(
                height: 150,
                width: 150,
                decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/images/logo-black.png"),
                    //     fit: BoxFit.cover),
                    color: Colors.white),
                child:const Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
