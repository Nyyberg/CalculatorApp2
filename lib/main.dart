import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ) ,
    body: Column(
      children: [
        Container(
          height: 40,
          color: Colors.white,
        ),
        Expanded(child:
          Container(
          width: double.infinity,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: <Widget>[
                Expanded(child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                          alignment: Alignment.center,
                          child: Text("placeholderInput", style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 400,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          alignment: Alignment.center,
                          child: Text("placeholderStack", style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
        ),
      ],
    ),

    );
  }
}



