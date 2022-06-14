import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:bmi_calculator/reusable/style.dart';
import 'package:flutter/material.dart';

class ResultBmi extends StatelessWidget {

  const ResultBmi({Key? key, required this.bmiResult, required this.interpretation, required this.resultText}) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: boxContainer(
              color: ColorConstant.kActiveContainerColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyResultTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
             Navigator.of(context).pop();
            },
            child: Container(
              color: ColorConstant.kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
              child: const Center(
                child: Text(
                  "RE-CALCULATE",
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget boxContainer(
      {required Color color,
      required Widget cardChild,
      required VoidCallback onPress}) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
