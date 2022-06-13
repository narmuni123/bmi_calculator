import 'package:bmi_calculator/models/gender_enum.dart';
import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:bmi_calculator/reusable/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  GenderEnum? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxContainer(
                      color: selectedGender == GenderEnum.male
                          ? ColorConstant.kActiveContainerColor
                          : ColorConstant.kInActiveContainerColor,
                      cardChild: genderCard(
                        icon: FontAwesomeIcons.mars,
                        title: "MALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = GenderEnum.male;
                        });
                      }),
                ),
                Expanded(
                  child: boxContainer(
                      color: selectedGender == GenderEnum.female
                          ? ColorConstant.kActiveContainerColor
                          : ColorConstant.kInActiveContainerColor,
                      cardChild: genderCard(
                        icon: FontAwesomeIcons.venus,
                        title: "FEMALE",
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = GenderEnum.female;
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: boxContainer(
                color: ColorConstant.kActiveContainerColor,
                cardChild: Column(
                  children: [
                    Text("")
                  ],
                ),
                onPress: () {}),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxContainer(
                      color: ColorConstant.kActiveContainerColor,
                      cardChild: const SizedBox(),
                      onPress: () {}),
                ),
                Expanded(
                  child: boxContainer(
                      color: ColorConstant.kActiveContainerColor,
                      cardChild: const SizedBox(),
                      onPress: () {}),
                ),
              ],
            ),
          ),
          Container(
            color: ColorConstant.kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
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

  Widget genderCard({required IconData icon, required String title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
