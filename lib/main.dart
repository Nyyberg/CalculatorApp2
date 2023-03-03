import 'package:calculatorapp2/Commands.dart';
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

  String Input = "";

  List<num> Stack = [];

  void _AddtoDisplay (String displayed){
    Input += displayed;
    setState(() {
      Input;
    });
  }

  void _AddtoStack (){
    Stack.add(num.parse(Input));
    Input = "";
    setState(() {
      Stack;
      Input;
    });
  }

  void _ExecuteCommands (Command command){
    command.execute();
    Stack.add(command.execute());
    Stack.removeAt(Stack.length - 2);
    Stack.removeAt(Stack.length - 2);
    setState(() {
      Stack;
    });
  }


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
                          child: Text(Input, style: TextStyle(fontSize: 25),
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
                          child: Text(Stack.toString(), style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(onPressed: (){_AddtoDisplay("1");}, child: Text("1")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("4");}, child: Text("4")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("7");}, child: Text("7")),
                              ElevatedButton(onPressed: (){_AddtoStack();}, child: Text("Enter")),
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(onPressed: (){_AddtoDisplay("2");}, child: Text("2")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("5");}, child: Text("5")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("8");}, child: Text("8")),
                              ElevatedButton(onPressed: (){_AddtoDisplay(".");}, child: Text(",")),
                            ]
                          ),
                          Column(
                            children: [
                              ElevatedButton(onPressed: (){_AddtoDisplay("3");}, child: Text("3")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("6");}, child: Text("6")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("9");}, child: Text("9")),
                              ElevatedButton(onPressed: (){_AddtoDisplay("0");}, child: Text("0")),
                        ],
                      ),
                          Column(
                            children: [
                              ElevatedButton(onPressed: (){_ExecuteCommands(Division(Stack));}, child: Text("/")),
                              ElevatedButton(onPressed: (){_ExecuteCommands(Subtraction(Stack));}, child: Text("-")),
                              ElevatedButton(onPressed: (){_ExecuteCommands(Addition(Stack));}, child: Text("+")),
                              ElevatedButton(onPressed: (){_ExecuteCommands(Multiplication(Stack));}, child: Text("*")),
                         ],
                       ),
                      ],
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



