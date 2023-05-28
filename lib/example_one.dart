
import 'package:flutter/material.dart';
import 'package:stepper_a/stepper_a.dart';
import 'package:stepper_example/step_one.dart';
import 'package:stepper_example/step_three.dart';
import 'package:stepper_example/step_two.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: const Text("Stepper Example One"),),
          body: Stack(
            children:const [
              Positioned(
                top: 5,
                left: 0,
                right: 0,
                bottom: 0,
                child: StepperA(
                stepperSize: Size(350, 70),
                stepperAxis: Axis.horizontal,
                borderShape: BorderShape.rRect,
                borderType: BorderType.straight,
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

              ),)
            ]
          ),
        ),
      ],
    );
  }
}
