import 'package:flutter/material.dart';

class CalculatorBody extends StatefulWidget {

  const CalculatorBody({super.key});
  @override
  CalculatorBodyState createState() => CalculatorBodyState();
}

class CalculatorBodyState extends State<CalculatorBody> {
  String output = "0";
  String _output = "0";
  double num1 = 0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "x") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(0);
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.amber,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            alignment: Alignment.bottomRight,
            child: Text(
              output,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            buildButton("7"),
            buildButton("8"),
            buildButton("9"),
            buildButton("/"),
          ],
        ),
        Row(
          children: <Widget>[
            buildButton("4"),
            buildButton("5"),
            buildButton("6"),
            buildButton("x"),
          ],
        ),
        Row(
          children: <Widget>[
            buildButton("1"),
            buildButton("2"),
            buildButton("3"),
            buildButton("-"),
          ],
        ),
        Row(
          children: <Widget>[
            buildButton("."),
            buildButton("0"),
            buildButton("00"),
            buildButton("+"),
          ],
        ),
        Row(
          children: <Widget>[
            buildButton("CLEAR"),
            buildButton("="),
          ],
        ),
      ],
    );
  }
}
