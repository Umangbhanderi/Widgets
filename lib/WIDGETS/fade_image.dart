import 'package:flutter/material.dart';

class FADEImage extends StatefulWidget {
  const FADEImage({super.key});

  @override
  State<FADEImage> createState() => _FADEImageState();
}

class _FADEImageState extends State<FADEImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("WELCOME"),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/logo-black.png",
          image: "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
        ),
      ),
    );
  }
}
