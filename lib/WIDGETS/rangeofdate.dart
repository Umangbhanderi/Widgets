import 'package:flutter/material.dart';

class RangeOFDATE extends StatefulWidget {
  const RangeOFDATE({super.key});

  @override
  State<RangeOFDATE> createState() => _RangeOFDATEState();
}

class _RangeOFDATEState extends State<RangeOFDATE> {
  DateTimeRange selectedDate = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedDate.duration.inDays}"),
            ElevatedButton(
              onPressed: () async {
                final dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(300),
                );
                if(dateTimeRange != null){
                  setState(() {
                    selectedDate = dateTimeRange;
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
