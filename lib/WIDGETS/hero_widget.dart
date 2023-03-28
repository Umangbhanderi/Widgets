import 'package:flutter/material.dart';

class heroWIDGET extends StatefulWidget {
  const heroWIDGET({super.key});

  @override
  State<heroWIDGET> createState() => _heroWIDGETState();
}

class _heroWIDGETState extends State<heroWIDGET> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: ListTile(
        trailing: Hero(
          tag: 'Tag-1',
          child: Icon(
            Icons.person,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(),
          ),
        ),
        title: Text("Click on me"),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "Tag-1",
              child: Container(
                color: Colors.orangeAccent,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
