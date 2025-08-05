import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
      
  
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        ]

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: const Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            //1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fixedSize: const Size(80, 80),
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('C'),
              ),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: Text('+/-')
              ),
              ElevatedButton(onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('%')),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('÷')),
              ],
            ),
              //2
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fixedSize: const Size(80, 80),
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('7'),
              ),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: Text('8')
              ),
              ElevatedButton(onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('9')),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('×')),
              ],
            ),
              //3
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fixedSize: const Size(80, 80),
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('4'),
              ),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: Text('5')
              ),
              ElevatedButton(onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('6')),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('-')),
              ],
            ),
              //4
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fixedSize: const Size(80, 80),
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('1'),
              ),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: Text('2')
              ),
              ElevatedButton(onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('3')),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('+')),
              ],
            ),
            //5
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  fixedSize: const Size(150, 80),
                  textStyle: const TextStyle(fontSize: 32),
                ),
                child: const Text('0'),
              ),
              ElevatedButton(onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 25),
              ),
              child: Text('.')
              ),
              ElevatedButton(onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fixedSize: const Size(80, 80),
                textStyle: const TextStyle(fontSize: 32),
              ),
              child: Text('=')),
              
              ],
            ),
              
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}