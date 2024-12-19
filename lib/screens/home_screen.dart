import 'package:flutter/material.dart';
import 'package:flutter_univ_practice/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('ホーム'),
      ),
      body: Container(
        // 色を指定
        color: Colors.blue,
        child: Center(
          child: Image.asset('images/icon.JPG'),
        ),
      ),
    );
  }
}
