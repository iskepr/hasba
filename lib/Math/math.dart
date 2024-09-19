import 'package:flutter/material.dart';
import 'package:hasba/Layout/Button.dart';

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
      "type": false,
    },
    {
      "num": "√",
      "type": false,
    },
    {
      "num": "س²",
      "type": false,
    },
    {
      "num": "لو",
      "type": false,
    },
    {
      "num": "''",
      "type": false,
    },
    {
      "num": "(=)",
      "type": false,
    },
    {
      "num": "س",
      "type": false,
    },
    {
      "num": "جا",
      "type": false,
    },
    {
      "num": "جتا",
      "type": false,
    },
    {
      "num": "ظا",
      "type": false,
    },
    {
      "num": "(-)",
      "type": false,
    },
    {
      "num": "(",
      "type": false,
    },
    {
      "num": ")",
      "type": false,
    },
    {
      "num": "%",
      "type": false,
    },
    {
      "num": "ي",
      "type": false,
    },
    {
      "num": "1",
      "type": false,
    },
    {
      "num": "2",
      "type": false,
    },
    {
      "num": "3",
      "type": false,
    },
    {
      "num": "<",
      "type": true,
    },
    {
      "num": "⃠",
      "type": false,
    },
    {
      "num": "4",
      "type": false,
    },
    {
      "num": "5",
      "type": false,
    },
    {
      "num": "6",
      "type": false,
    },
    {
      "num": "+",
      "type": true,
    },
    {
      "num": "÷",
      "type": true,
    },
    {
      "num": "7",
      "type": false,
    },
    {
      "num": "8",
      "type": false,
    },
    {
      "num": "9",
      "type": false,
    },
    {
      "num": "-",
      "type": true,
    },
    {
      "num": "x",
      "type": true,
    },
    {
      "num": "●",
      "type": false,
    },
    {
      "num": "0",
      "type": false,
    },
    {
      "num": "𝝅",
      "type": false,
    },
    {
      "num": "أ.جـ",
      "type": false,
    },
    {
      "num": "=",
      "type": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
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
                        ButtonMain(num: '⚙️', type: true),
                        ButtonMain(num: '~', type: true),
                      ]),
                ]),
          ),
          Expanded(
            flex: 5,
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
                        } else {
                          // add nums
                          sual += keys[index]["num"];
                        }
                        if (keys[index]["num"] == '=') {
                          egaba = sual;
                        }
                      });
                    },
                    child: ButtonMain(
                      num: keys[index]["num"],
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
}
