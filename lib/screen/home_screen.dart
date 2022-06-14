// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_is_empty

import 'package:calculator/constant/theme.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../widget/mybutton.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userQuestion = "";
  var userAnswer = "";

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final isPortate =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: isPortate ? portatScreen() : landScapeScreen(),
      ),
    );
  }

  portatScreen() {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      userAnswer,
                      style: styleTheme.textHeader,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      userQuestion,
                      style: styleTheme.textHeader2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                title: '%',
                cardColor: Colors.deepOrange,
                onPreased: () {
                  setState(() {
                    if (!userQuestion.endsWith('%')) {
                      userQuestion += '%';
                    }
                  });
                },
              )),
              Expanded(
                  child: MyButton(
                      title: 'C',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion = "";
                          userAnswer = "";
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: 'DEL',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          if (userQuestion.length > 0) {
                            userQuestion = userQuestion.substring(
                                0, userQuestion.length - 1);
                            userAnswer = "";
                          }
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '+',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('+')) {
                            userQuestion += '+';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '7',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '7';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '8',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '8';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '9',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '9';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '-',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('-')) {
                            userQuestion += '-';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '4',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '4';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '5',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '5';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '6',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '6';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: 'x',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('x')) {
                            userQuestion += 'x';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '1',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '1';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '2',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '2';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '3',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '3';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '/',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('/')) {
                            userQuestion += '/';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '0',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '0';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '.',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('.')) {
                            userQuestion += '.';
                          }
                        });
                      })),
              Expanded(
                  flex: 2,
                  child: MyButton(
                      title: '=',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          equallpresed();
                        });
                      })),
            ],
          ),
        ),
      ],
    );
  }

  landScapeScreen() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      userAnswer,
                      style: styleTheme.textHeader,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      userQuestion,
                      style: styleTheme.textHeader2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                title: '%',
                cardColor: Colors.deepOrange,
                onPreased: () {
                  setState(() {
                    if (!userQuestion.endsWith('%')) {
                      userQuestion += '%';
                    }
                  });
                },
              )),
              Expanded(
                  child: MyButton(
                      title: 'C',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion = "";
                          userAnswer = "";
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: 'DEL',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          if (userQuestion.length > 0) {
                            userQuestion = userQuestion.substring(
                                0, userQuestion.length - 1);
                            userAnswer = "";
                          }
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '0',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '0';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '+',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('+')) {
                            userQuestion += '+';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '7',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '7';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '8',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '8';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '9',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '9';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '.',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('.')) {
                            userQuestion += '.';
                          }
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '-',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('-')) {
                            userQuestion += '-';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '4',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '4';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '5',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '5';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '6',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '6';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '00',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '00';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: 'x',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('x')) {
                            userQuestion += 'x';
                          }
                        });
                      })),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: MyButton(
                      title: '1',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '1';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '2',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '2';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '3',
                      cardColor: Colors.deepOrange,
                      onPreased: () {
                        setState(() {
                          userQuestion += '3';
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '=',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          equallpresed();
                        });
                      })),
              Expanded(
                  child: MyButton(
                      title: '/',
                      cardColor: Color(0xff075D6C),
                      onPreased: () {
                        setState(() {
                          if (!userQuestion.endsWith('/')) {
                            userQuestion += '/';
                          }
                        });
                      })),
            ],
          ),
        ),
      ],
    );
  }

  bool isOperator(String x) {
    if (x == "%" || x == "/" || x == "x" || x == "-" || x == "+" || x == "=") {
      return true;
    } else {
      return false;
    }
  }

  void equallpresed() {
    String finalQuestion = userQuestion;
    finalQuestion = finalQuestion.replaceAll("x", "*");

    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}
