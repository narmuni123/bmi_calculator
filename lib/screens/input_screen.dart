import 'package:bmi_calculator/models/gender_enum.dart';
import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  GenderEnum? selectedGender;

  // Color maleCardColor = ColorConstant.inActiveContainerColor;
  // Color femaleCardColor = ColorConstant.inActiveContainerColor;
  //
  // void updateColor(GenderEnum gender) {
  //   if (gender == GenderEnum.male) {
  //     if (maleCardColor == ColorConstant.inActiveContainerColor) {
  //       maleCardColor = ColorConstant.activeContainerColor;
  //       femaleCardColor = ColorConstant.inActiveContainerColor;
  //     } else {
  //       maleCardColor = ColorConstant.inActiveContainerColor;
  //     }
  //   }
  //   if (gender == GenderEnum.female) {
  //     if (femaleCardColor == ColorConstant.inActiveContainerColor) {
  //       femaleCardColor = ColorConstant.activeContainerColor;
  //       maleCardColor = ColorConstant.inActiveContainerColor;
  //     } else {
  //       femaleCardColor = ColorConstant.inActiveContainerColor;
  //     }
  //   }
  // }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderEnum.male;
                      });
                    },
                    child: boxContainer(
                      color: selectedGender == GenderEnum.male
                          ? ColorConstant.activeContainerColor
                          : ColorConstant.inActiveContainerColor,
                      cardChild: genderCard(
                        icon: FontAwesomeIcons.mars,
                        title: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderEnum.female;
                      });
                    },
                    child: boxContainer(
                      color: selectedGender == GenderEnum.female
                          ? ColorConstant.activeContainerColor
                          : ColorConstant.inActiveContainerColor,
                      cardChild: genderCard(
                        icon: FontAwesomeIcons.venus,
                        title: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: boxContainer(
              color: ColorConstant.activeContainerColor,
              cardChild: const SizedBox(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxContainer(
                    color: ColorConstant.activeContainerColor,
                    cardChild: const SizedBox(),
                  ),
                ),
                Expanded(
                  child: boxContainer(
                    color: ColorConstant.activeContainerColor,
                    cardChild: const SizedBox(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: ColorConstant.bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget boxContainer({required Color color, required Widget cardChild}) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
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
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
