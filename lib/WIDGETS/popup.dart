import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding:const EdgeInsets.all(20),
                leading:const Icon(Icons.notifications_active_rounded),
                content:const Text("Subcribe"),
                elevation: 5,
                backgroundColor: Colors.white12,
                actions: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                    },
                    child:const Text("Dismiss"),
                  ),
                ],
              ),
            );
          },
          child:const Text("open"),
        ),
      ),
    );
  }
}
