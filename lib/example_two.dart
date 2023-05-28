
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
      body:  StepperA(
          stepperSize: const Size(300, 90),
          borderShape: BorderShape.rRect,
          borderType: BorderType.straight,
          stepperAxis: Axis.horizontal,
          lineType: LineType.dotted,
          stepperBackgroundColor: Colors.transparent,
          stepHeight: 40,
          stepWidth: 40,
          stepBorder: true,
          pageSwipe: true,
          formValidation: true,

          // floatingPreviousButton: FloatingButton(
          //     buttonIconColor: Colors.white,
          //     backgroundColor:  Colors.blueAccent,
          //     position: Position(//
          //         left: 10,
          //         bottom: 10
          //     )
          // ),
          // floatingForwardButton: FloatingButton(
          //     buttonIconColor: Colors.white,
          //     backgroundColor:  Colors.blueAccent,
          //     position: Position(
          //         right: 10,
          //         bottom: 20
          //     )
          // ),
          previousButton: (int index) => StepperAButton(
            width: 90,
            height: 40,
            buttonWidget: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          forwardButton: (index) => StepperAButton(
            width: index == 0 ? 200 : 90,
            height: 40,
            buttonWidget: index == 3
                ? const Text('Complete', style: TextStyle(fontSize: 14, color: Colors.white))
                : const Text('Next', style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
          customSteps: [
            const CustomSteps(stepsIcon: Icons.login, title: "LogIn"),
            const CustomSteps(stepsIcon: Icons.home, title: "Home"),
            const CustomSteps(stepsIcon: Icons.account_circle, title: "Account"),
            CustomSteps(image: Image.asset("assets/pay.png",color: Colors.white,), title: "Payment"),
          ],
          step: const StepA(
              currentStepColor: Colors.green,
              completeStepColor: Colors.indigo,
              inactiveStepColor: Colors.black45,
              // loadingWidget: CircularProgressIndicator(color: Colors.green,),
              margin: EdgeInsets.all(5)),
          stepperBodyWidget: [
            StepOne(),
            StepTwo(),
            StepThree(),
            StepThree(),

          ]),
    );
  }
}
