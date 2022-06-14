import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:bmi_calculator/reusable/style.dart';
import 'package:flutter/material.dart';

class ResultBmi extends StatelessWidget {
  const ResultBmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              "Your Result",
              style: kTitleTextStyle,
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
                    "Noraml",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "18.3",
                    style: kBMITextStyle,
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: kBodyResultTextStyle,
                  ),
                ],
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
