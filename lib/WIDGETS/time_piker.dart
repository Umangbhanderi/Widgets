import 'package:flutter/material.dart';

class TIMEPIKER extends StatefulWidget {
  const TIMEPIKER({super.key});

  @override
  State<TIMEPIKER> createState() => _TIMEPIKERState();
}

class _TIMEPIKERState extends State<TIMEPIKER> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedTime.hour}-${selectedTime.minute}"),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: selectedTime,
                    initialEntryMode: TimePickerEntryMode.dial);
                if (timeOfDay != null) {
                  setState(
                    () {
                      selectedTime = timeOfDay;
                    },
                  );
                }
              },
              child:const Text("Choose Time"),
            ),
          ],
        ),
      ),
    );
  }
}
