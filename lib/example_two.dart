
import 'package:flutter/material.dart';
import 'package:stepper_a/stepper_a.dart';
import 'package:stepper_example/step_one.dart';
import 'package:stepper_example/step_three.dart';
import 'package:stepper_example/step_two.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const StepperA(
        stepperSize: Size(350, 70),
        stepperAxis: Axis.horizontal,
        borderShape: BorderShape.rRect,
        borderType: BorderType.straight,
        floatingButton: false,
        stepperBodyWidget: [
          StepOne(),
          StepTwo(),
          StepThree(),
        ],
        stepBorder: true,
        step: StepA(
            currentStepColor: Colors.purpleAccent,
            completeStepColor: Colors.green,
            inactiveStepColor: Colors.black38,
            margin: EdgeInsets.all(5)
        ),
      ),
    );
  }
}
