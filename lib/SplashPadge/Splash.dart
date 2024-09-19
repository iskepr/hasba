import 'package:flutter/material.dart';
import 'package:hasba/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _navigateToHome();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _navigateToHome();
    }
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 1));

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/Imgs/logo.png',
                  width: 140,
                ),
              ),
              Expanded(child: SizedBox(height: 100)),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'بواسطة',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'سكيبر',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
