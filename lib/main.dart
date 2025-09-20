import 'package:flutter/material.dart';
import 'package:splash_screen/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Demo'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You are navigate here using Navigator pushReplashment and Future delay from the previus page. \n you can also apply here your Logo',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
