import 'package:flutter/material.dart';

class CROSFADE extends StatefulWidget {
  const CROSFADE({super.key});

  @override
  State<CROSFADE> createState() => _CROSFADEState();
}

class _CROSFADEState extends State<CROSFADE> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        children: [const
          SizedBox(
            height: 100.0,
            width: double.infinity,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child:const Text(
              "Switch",
              style: TextStyle(color: Colors.white),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              "assets/images/logo-black.png",
              width: double.infinity,
            ),
            secondChild: Image.asset(
              "assets/images/me.jpg",
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration:const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
