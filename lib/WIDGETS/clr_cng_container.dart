import 'package:flutter/material.dart';

class CLRCNGCONTAINER extends StatefulWidget {
  const CLRCNGCONTAINER({super.key});

  @override
  State<CLRCNGCONTAINER> createState() => _CLRCNGCONTAINERState();
}

class _CLRCNGCONTAINERState extends State<CLRCNGCONTAINER> {
  Color caughtColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              data: Colors.orangeAccent,
              onDraggableCanceled: (Velocity, Offset) {},
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Box",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 18),
                  ),
                ),
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
                child:  const Center(
                  child: Text("Box"),
                ),
              ),
            ),
            DragTarget(
              onAccept: (Color color) {
                caughtColor = color;
              },
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  height: 200.0,
                  width: 200.0,
                  color: accepted.isEmpty ? caughtColor : Colors.white,
                  child:const Center(
                    child: Text("drag here"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
