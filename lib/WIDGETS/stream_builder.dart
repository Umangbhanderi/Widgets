import 'package:flutter/material.dart';

class STREAMBUILDERWIDGET extends StatefulWidget {
  const STREAMBUILDERWIDGET({super.key});

  @override
  State<STREAMBUILDERWIDGET> createState() => _STREAMBUILDERWIDGETState();
}

Stream<int> generateStream = (() async* {
  await Future<void>.delayed(
    Duration(seconds: 2),
  );
  yield 1;
  await Future<void>.delayed(
    Duration(seconds: 1),
  );
  yield 2;
  // throw "an error occued";
  await Future<void>.delayed(
    Duration(seconds: 1),
  );
  yield 3;
})();

class _STREAMBUILDERWIDGETState extends State<STREAMBUILDERWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: generateStream,
            initialData: 0,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator.adaptive();
              }
              if (snapshot.hasError) {
                return Text("Error");
              } else {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(fontSize: 40),
                );
              }
            }),
      ),
    );
  }
}
