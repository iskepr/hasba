import 'package:flutter/material.dart';
import 'package:hasba/Home.dart';
import 'package:hasba/Math/math.dart';
import 'package:hasba/SplashPadge/Splash.dart';
import 'package:hasba/ui/Color.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Hasba());
}

Future<bool> _checkLoginStatus() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.containsKey('UserID');
}

class Hasba extends StatelessWidget {
  const Hasba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkmode,
      // theme: lightmode,
      title: 'علاقة',
      initialRoute: '/splash',
      routes: {
        '/': (context) => Home(),
        '/splash': (context) => SplashScreen(),
        '/الرياضيات': (context) => Math(),
        // '/الفزياء': (context) => PHysics(),
        // '/الاعدادات': (context) => Sitengs(),
      },
    );
  }
}
