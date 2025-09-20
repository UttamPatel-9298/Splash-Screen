// ignore_for_file: camel_case_types, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_ScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash_ScreenPage extends StatefulWidget {
  const Splash_ScreenPage({super.key});

  @override
  State<Splash_ScreenPage> createState() => _Splash_ScreenPageState();
}

class _Splash_ScreenPageState extends State<Splash_ScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
          child: Text(
            'Hello Devlopers!',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
