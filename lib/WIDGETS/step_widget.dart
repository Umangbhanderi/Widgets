import 'package:flutter/material.dart';

class StepWIDGET extends StatefulWidget {
  const StepWIDGET({super.key});

  @override
  State<StepWIDGET> createState() => _StepWIDGETState();
}

class _StepWIDGETState extends State<StepWIDGET> {
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER"),
      ),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: _currentstep == 0,
              title: Text("step 1"),
              content: Text(
                "content of step 1",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            Step(
              isActive: _currentstep == 1,
              title: Text("step 2"),
              content: Text(
                "content of step 2",
                style: TextStyle(color: Colors.greenAccent),
              ),
            ),
            Step(
              isActive: _currentstep == 2,
              title: Text("step 3"),
              content: Text(
                "content of step 3",
                style: TextStyle(color: Colors.yellowAccent),
              ),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentstep = newIndex;
            });
          },
          currentStep: _currentstep,
          onStepContinue: () {
            if (_currentstep != 2) {
              setState(() {
                _currentstep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentstep != 0) {
              setState(() {
                _currentstep -= 1;
              });
            }
          },
          type: StepperType.horizontal,
        ),
      ),
    );
  }
}
