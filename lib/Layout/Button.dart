import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  final String num;
  final bool type;
  const ButtonMain({super.key, required this.num, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: type
                  ? [Color(0xFF00DDD2), Color(0xFF00E978)]
                  : [
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context).colorScheme.surface
                    ],
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10), // إضافة borderRadius
          ),
          alignment: Alignment.center,
          child: Text(
            num,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: type? 30 : 20,
            ),
          ),
      ),
    );
  }
}
