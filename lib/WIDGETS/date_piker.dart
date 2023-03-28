import 'package:flutter/material.dart';

class PikerDATE extends StatefulWidget {
  const PikerDATE({super.key});

  @override
  State<PikerDATE> createState() => _PikerDATEState();
}

class _PikerDATEState extends State<PikerDATE> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${selectedDate.year}-${selectedDate.month}-${selectedDate.day},"),
            ElevatedButton(
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if(dateTime != null){
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
              child:const Text("Choose Date"),
            ),
          ],
        ),
      ),
    );
  }
}
