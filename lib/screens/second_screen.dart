import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Column(
              children: [
                Text(text, style: const TextStyle(fontSize: 100)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Back')),
              ],
            ),
          ),
        ));
  }
}
