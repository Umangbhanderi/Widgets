import 'package:flutter/material.dart';

class AniCONTAINER extends StatefulWidget {
  const AniCONTAINER({super.key});

  @override
  State<AniCONTAINER> createState() => _AniCONTAINERState();
}

class _AniCONTAINERState extends State<AniCONTAINER> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            height: selected ? 100.0 : 200.0,
            width: selected ? 200.0 : 100.0,
            color: selected ? Colors.blueGrey : Colors.white,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            curve: Curves.fastOutSlowIn,
            duration:const Duration(seconds: 2),
            child:const FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
