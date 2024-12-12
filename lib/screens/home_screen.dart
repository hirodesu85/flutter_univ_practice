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
        color: Theme.of(context).colorScheme.primary,
        width: double.infinity,
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    // ボタンを押した時の処理
                    print('画面遷移ボタンを押しました');
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        text: 'A',
                      ),
                    ));
                  },
                  child: const Text('ボタンA')),
              ElevatedButton(
                  onPressed: () {
                    // ボタンを押した時の処理
                    print('画面遷移ボタンを押しました');
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        text: 'B',
                      ),
                    ));
                  },
                  child: const Text('ボタンB')),
              ElevatedButton(
                  onPressed: () {
                    // ボタンを押した時の処理
                    print('画面遷移ボタンを押しました');
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        text: 'C',
                      ),
                    ));
                  },
                  child: const Text('ボタンC')),
            ],
          ),
        ),
      ),
    );
  }
}
