import 'package:flutter/material.dart';
import 'dart:math';
class CountdownTimer extends StatefulWidget{
  var timer = CountdownTimerState();

  @override
  State<StatefulWidget> createState() {
    timer = CountdownTimerState();
//  timer._controller.duration =
    return timer;
  }
}

class CountdownTimerState extends State<CountdownTimer> with TickerProviderStateMixin{
  late AnimationController _controller;

  String get timeRemaining{
    Duration duration = _controller.duration! * _controller.value;
    return '${duration.inMinutes} : ${(duration.inSeconds % 60).toString().padLeft(2,'0')}';
  }


  startTimer(){
    print('called');
    _controller.reverse(from: 1);
  }

  stopTimer(){
    _controller.reverse(from: 0);
  }
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 180));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 60,
        height: 60,
        child: Align(alignment: FractionalOffset.center,child: AspectRatio(aspectRatio: 1.0,child: Stack(
          children: <Widget>[
            Positioned.fill(child: AnimatedBuilder(animation: _controller, builder: (BuildContext context,Widget? child){
              return CustomPaint(
                painter: ProgressPainter(animation: _controller, backgroundColor: Colors.purple, color: Colors.white54),
              );
            })),
            Align(
              alignment: FractionalOffset.center,
              child: AnimatedBuilder(animation: _controller, builder: (BuildContext context,Widget? child){
                return Text(timeRemaining,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),);
              })
            )
          ],
        ),),),
      ),
    );
  }
}


class ProgressPainter extends CustomPainter {
  ProgressPainter({
    required this.animation,
    required this.backgroundColor,
    required this.color,
  }) : super(repaint: animation);

  /// Animation representing what we are painting
  final Animation<double> animation;

  /// The color in the background of the circle
  final Color backgroundColor;

  /// The foreground color used to indicate progress
  final Color color;
  
  // @override
  // void paint(Canvas canvas, Size size) {
  //   // TODO: implement paint
  // }
  
  // @override
  // bool shouldRepaint(covariant CustomPainter oldDelegate) {
  //   // TODO: implement shouldRepaint
  //   throw UnimplementedError();
  // }
  // }

  @override
  void paint(Canvas canvas, Size size) {
    print('Timer is running');
    Paint paint = new Paint()
      ..color = backgroundColor
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.fill;
    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    // var math;
    double progressRadians = (1.0 - animation.value) * 2 * pi;
    canvas.drawArc(
        Offset.zero & size, pi * 1.5, -progressRadians, false, paint);
  }

  @override
  bool shouldRepaint(ProgressPainter other) {
    return animation.value != other.animation.value ||
        color != other.color ||
        backgroundColor != other.backgroundColor;
  }
}