import 'package:flutter/material.dart';
import 'package:hasba/Math/math.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
              dividerHeight: 0,
              indicatorColor: Color(0x00111111),
              labelColor: Colors.grey,
              unselectedLabelColor: Colors.grey[900],
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
              tabs: const [
                Tab(
                  icon: Text(
                    'الفيزياء',
                  ),
                ),
                Tab(
                    icon: Text(
                  'الرياضيات',
                )),
              ]),
        ),
        body: TabBarView(children: [
          Math(),
          Math(),
        ]),
      ),
    );
  }
}
