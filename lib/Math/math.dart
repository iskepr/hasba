import 'package:flutter/material.dart';
import 'package:hasba/Layout/Button.dart';
import 'package:hasba/Logic/math_expressions.dart';

class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  String sual = '';
  String egaba = '';
  List keys = [
    {
      "num": "½",
      "num2": "2",
      "type": false,
    },
    {
      "num": "√",
      "num2": "2",
      "type": false,
    },
    {
      "num": "س²",
      "num2": "2",
      "type": false,
    },
    {
      "num": "لو",
      "num2": "2",
      "type": false,
    },
    {
      "num": "''",
      "num2": "2",
      "type": false,
    },
    {
      "num": "(=)",
      "num2": "2",
      "type": false,
    },
    {
      "num": "س",
      "num2": "ص",
      "type": false,
    },
    {
      "num": "جا(",
      "num2": "2",
      "type": false,
    },
    {
      "num": "جتا(",
      "num2": "2",
      "type": false,
    },
    {
      "num": "ظا(",
      "num2": "2",
      "type": false,
    },
    {
      "num": "(-)",
      "num2": "2",
      "type": false,
    },
    {
      "num": "(",
      "num2": "2",
      "type": false,
    },
    {
      "num": ")",
      "num2": "2",
      "type": false,
    },
    {
      "num": "%",
      "num2": "2",
      "type": false,
    },
    {
      "num": "ي",
      "num2": "2",
      "type": false,
    },
    {
      "num": "1",
      "num2": "2",
      "type": false,
    },
    {
      "num": "2",
      "num2": "2",
      "type": false,
    },
    {
      "num": "3",
      "num2": "2",
      "type": false,
    },
    {
      "num": "<",
      "num2": "",
      "type": true,
    },
    {
      "num": "⃠",
      "num2": "",
      "type": false,
    },
    {
      "num": "4",
      "num2": "2",
      "type": false,
    },
    {
      "num": "5",
      "num2": "2",
      "type": false,
    },
    {
      "num": "6",
      "num2": "2",
      "type": false,
    },
    {
      "num": "+",
      "num2": "",
      "type": true,
    },
    {
      "num": "÷",
      "num2": "",
      "type": true,
    },
    {
      "num": "7",
      "num2": "",
      "type": false,
    },
    {
      "num": "8",
      "num2": "2",
      "type": false,
    },
    {
      "num": "9",
      "num2": "2",
      "type": false,
    },
    {
      "num": "-",
      "num2": "",
      "type": true,
    },
    {
      "num": "x",
      "num2": "",
      "type": true,
    },
    {
      "num": "●",
      "num2": "",
      "type": false,
    },
    {
      "num": "0",
      "num2": "2",
      "type": false,
    },
    {
      "num": "𝝅",
      "num2": "e",
      "type": false,
    },
    {
      "num": "أ.جـ",
      "num2": "2",
      "type": false,
    },
    {
      "num": "=",
      "num2": "2",
      "type": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
                        height: 75,
                        child: Text(
                          sual,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: EdgeInsets.all(10),
                        height: 50,
                        child: Text(
                          egaba,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ButtonMain(
                          num: '⚙️',
                          type: true,
                          num2: '',
                        ),
                        ButtonMain(
                          num: '~',
                          type: true,
                          num2: '',
                        ),
                      ]),
                ]),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: GridView.builder(
                itemCount: keys.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        //add delete
                        if (keys[index]["num"] == '<') {
                          sual = sual.substring(0, sual.length - 1);
                        } else if (keys[index]["num"] == '⃠') {
                          // add erse all
                          sual = '';
                          egaba = '';
                        } else if (keys[index]["num"] == '=') {
                          egabafun();
                        } else {
                          // add nums
                          sual += keys[index]["num"];
                        }
                      });
                      // egabafun();
                    },
                    child: ButtonMain(
                      num: keys[index]["num"],
                      num2: keys[index]["num2"],
                      type: keys[index]["type"],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void egabafun() {
    try {
      sual = sual.replaceAll("x", "*");
      sual = sual.replaceAll("÷", "/");
      sual = sual.replaceAll("جا", "sin");
      sual = sual.replaceAll("جتا", "COS");
      sual = sual.replaceAll("ظا", "TAN");
      sual = sual.replaceAll("لو", "LOG");
      sual = sual.replaceAll("لو", "LOG");

      var exp = Parser().parse(sual);
      egaba = exp.evaluate(EvaluationType.REAL, ContextModel()).toString();
      // remove .0
      if (egaba.endsWith(".0")) {
        egaba = egaba.replaceAll(".0", "");
      }
    } catch (e) {
      egaba = 'غلط $e';
    }
  }
}
