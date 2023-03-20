import 'package:flutter/material.dart';
import 'package:flutter_awesome_calculator/flutter_awesome_calculator.dart';
import 'package:whatsapp/constants/colours.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlutterAwesomeCalculator(
            context: context,
            digitsButtonColor: AppColors.bgColor,
            backgroundColor: AppColors.bgGreyColor,
            expressionAnswerColor: Colors.black,
            showAnswerField: true,
            buttonRadius: 12,
            clearButtonColor: AppColors.mainColor,
            operatorsButtonColor: AppColors.primaryColor,
            onChanged: (answer, expression) {},
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
