import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:calculator/mybutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput="";
  var answer="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38.withOpacity(.8),
      body :SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(

            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Text(userInput.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text(answer.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
                      
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC',onPressed: (){
                          userInput='';
                          setState(() {

                          });
                        },),
                        MyButton(title: '+/-',onPressed: (){
                          userInput='7';
                          setState(() {

                          });
                        }),
                        MyButton(title: '%',onPressed: (){
                          userInput+='%';
                          setState(() {

                          });
                        }),
                        MyButton(title: '/',onPressed: (){
                          userInput+='/';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7',onPressed: (){
                          userInput+='7';
                          setState(() {

                          });
                        },),
                        MyButton(title: '8',onPressed: (){
                          userInput+='8';
                          setState(() {

                          });
                        }),
                        MyButton(title: '9',onPressed: (){
                          userInput+='9';
                          setState(() {

                          });
                        }),
                        MyButton(title: 'x',onPressed: (){
                          userInput+='*';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4',onPressed: (){
                          userInput+='4';
                          setState(() {

                          });
                        },),
                        MyButton(title: '5',onPressed: (){
                          userInput+='5';
                          setState(() {

                          });
                        }),
                        MyButton(title: '6',onPressed: (){
                          userInput+='6';
                          setState(() {

                          });
                        }),
                        MyButton(title: '-',onPressed: (){
                          userInput+='-';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1',onPressed: (){
                          userInput+='1';
                          setState(() {

                          });
                        },),
                        MyButton(title: '2',onPressed: (){
                          userInput+='2';
                          setState(() {

                          });
                        }),
                        MyButton(title: '3',onPressed: (){
                          userInput+='3';
                          setState(() {

                          });
                        }),
                        MyButton(title: '+',onPressed: (){
                          userInput+='+';
                          setState(() {

                          });
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0',onPressed: (){
                          userInput+='0';
                          setState(() {

                          });
                        },),
                        MyButton(title: '.',onPressed: (){
                          userInput+='.';
                          setState(() {

                          });
                        }),
                        MyButton(title: 'DEL',onPressed: (){
                          userInput='DEL';
                          setState(() {

                          });
                        }),
                        MyButton(title: '=',onPressed: (){
                          equalpress();
                        setState(() {

                        });}),
                      ],
                    ),

                  ],
                ),
              )

            ],

          ),
        ),
      ),
    );
  }

  void equalpress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer=eval.toString();
  }
}

