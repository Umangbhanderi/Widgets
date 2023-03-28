import 'package:flutter/material.dart';

class IndexedStackWIDGET extends StatefulWidget {
  const IndexedStackWIDGET({super.key});

  @override
  State<IndexedStackWIDGET> createState() => _IndexedStackWIDGETState();
}

class _IndexedStackWIDGETState extends State<IndexedStackWIDGET> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Text("0"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Text("1"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Text("2"),
                ),
              ],
            ),
            Divider(
              height: 10,
            ),
            IndexedStack(
              index: index,
              children: [
                Center(
                  child: Image.network(
                    "https://tinyurl.com/95ncjeuu",
                  ),
                ),
                Center(
                  child: Image.network(
                    "https://tinyurl.com/22yj4f66",
                  ),
                ),
                Center(
                  child: Image.network(
                    "https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png",fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
