import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DraggableIMG extends StatefulWidget {
  const DraggableIMG({super.key});

  @override
  State<DraggableIMG> createState() => _DraggableIMGState();
}

class _DraggableIMGState extends State<DraggableIMG> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: LayoutBuilder(builder: (context, Constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                right: _offset.dy,
                child: LongPressDraggable(
                  child: Image.network(
                    "https://tinyurl.com/95ncjeuu",
                    height: 200,
                  ),
                  feedback: Image.network(
                    "https://tinyurl.com/95ncjeuu",
                    height: 200,
                    color: Colors.orangeAccent,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                  onDragEnd: (details){
                    setState(() {
                      double adjustment = MediaQuery.of(context).size.height - Constraints.maxHeight;
                      _offset = Offset(
                        details.offset.dx, details.offset.dy - adjustment
                      );
                    });
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
