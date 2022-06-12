import 'package:bmi_calculator/reusable/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  Color maleCardColor = ColorConstant.inActiveContainerColor;
  Color femaleCardColor = ColorConstant.inActiveContainerColor;

  void updateColor(int genderSelected){
   if(genderSelected == 1){
     if(maleCardColor == ColorConstant.inActiveContainerColor){
       setState(() {
         maleCardColor = ColorConstant.activeContainerColor;
       });
     }else{
       setState(() {
         maleCardColor = ColorConstant.inActiveContainerColor;
       });
     }
   }else{
     if(femaleCardColor == ColorConstant.inActiveContainerColor){
       setState(() {
         femaleCardColor = ColorConstant.activeContainerColor;
       });
     }else{
       setState(() {
         femaleCardColor = ColorConstant.inActiveContainerColor;
       });
     }
   }
  }
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
                    color: maleCardColor,
                    cardChild: genderCard(icon: FontAwesomeIcons.mars, title: "MALE", callbackAction: (){}),
                  ),
                ),
                Expanded(
                  child: boxContainer(
                    color: femaleCardColor,
                    cardChild: genderCard(icon: FontAwesomeIcons.venus, title: "FEMALE", callbackAction: (){}),
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

  Widget genderCard({required IconData icon, required String title, required GestureTapCallback callbackAction}){
    return GestureDetector(
      onTap: callbackAction,
      child: Column(
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
      ),
    );
  }
}
