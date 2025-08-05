import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = "0";
  String _currentNumber = "";
  double _num1 = 0;
  String _operator = "";

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _currentNumber = "";
        _num1 = 0;
        _operator = "";
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "×" ||
          buttonText == "÷") {
        _num1 = double.parse(_output);
        _operator = buttonText;
        _currentNumber = "";
      } else if (buttonText == "=") {
        double num2 = double.parse(_output);
        if (_operator == "+") {
          _output = (_num1 + num2).toString();
        }
        if (_operator == "-") {
          _output = (_num1 - num2).toString();
        }
        if (_operator == "×") {
          _output = (_num1 * num2).toString();
        }
        if (_operator == "÷") {
          _output = (_num1 / num2).toString();
        }
        _num1 = 0;
        _operator = "";
      } else {
        if (_currentNumber.contains('.') && buttonText == '.') {
          return;
        }
        _currentNumber = _currentNumber + buttonText;
        _output = _currentNumber;
      }
    });
  }

  Widget _buildButton(String buttonText) {
    return ElevatedButton(
      onPressed: () => _buttonPressed(buttonText),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        fixedSize: const Size(80, 80),
        textStyle: const TextStyle(fontSize: 28),
      ),
      child: Text(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Edit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Speak',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text(
                _output,
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            //1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildButton("C"),
                _buildButton("+/-"),
                _buildButton("%"),
                _buildButton("÷"),
              ],
            ),
            //2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildButton("7"),
                _buildButton("8"),
                _buildButton("9"),
                _buildButton("×"),
              ],
            ),
            //3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildButton("4"),
                _buildButton("5"),
                _buildButton("6"),
                _buildButton("-"),
              ],
            ),
            //4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildButton("1"),
                _buildButton("2"),
                _buildButton("3"),
                _buildButton("+"),
              ],
            ),
            //5
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _buttonPressed("0"),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    fixedSize: const Size(170, 80),
                    textStyle: const TextStyle(fontSize: 32),
                  ),
                  child: const Text("0"),
                ),
                _buildButton("."),
                _buildButton("="),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}