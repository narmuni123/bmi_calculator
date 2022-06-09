import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
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
                  child: boxContainer(color: const Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: boxContainer(color: const Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: boxContainer(color: const Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: boxContainer(color: const Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: boxContainer(color: const Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget boxContainer({required Color color}) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
