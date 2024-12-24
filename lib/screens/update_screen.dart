import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_univ_practice/models/post.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen(this.post, {super.key});

  final Post post;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  String updatedWord = "";

  Future _updateFirebaseData() async {
    await FirebaseFirestore.instance
        .collection("posts")
        .doc(widget.post.id)
        .update({
      "text": updatedWord,
      "updatedAt": Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Page"),
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: widget.post.text,
            onChanged: (value) {
              updatedWord = value;
              setState(() {});
            },
          ),
          ElevatedButton(
            onPressed: updatedWord.isEmpty
                ? null
                : () {
                    _updateFirebaseData();
                    Navigator.pop(context);
                  },
            child: const Text("更新"),
          ),
        ],
      ),
    );
  }
}
