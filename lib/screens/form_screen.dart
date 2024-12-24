import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String newWord = "";

  Future _addFirebaseData() async {
    await FirebaseFirestore.instance.collection("posts").add({
      "text": newWord,
      "createdAt": Timestamp.now(),
      "updatedAt": Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              newWord = value;
              setState(() {});
            },
          ),
          ElevatedButton(
            onPressed: newWord.isEmpty
                ? null
                : () {
                    _addFirebaseData();
                    Navigator.pop(context);
                  },
            child: const Text("追加"),
          ),
        ],
      ),
    );
  }
}
