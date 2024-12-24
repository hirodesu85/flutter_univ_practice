import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _firebaseDataList = [];

  @override
  void initState() {
    super.initState();
    _fetchFirebaseData();
  }

  Future _fetchFirebaseData() async {
    await FirebaseFirestore.instance
        .collection("posts")
        .orderBy('createdAt', descending: true)
        .get()
        .then((event) {
      setState(() {
        _firebaseDataList.clear();
        event.docs.forEach((element) {
          _firebaseDataList.add(element.data()["text"]);
        });
      });
    });
  }

  Future _addFirebaseData() async {
    await FirebaseFirestore.instance.collection("posts").add({
      "text": "テスト投稿1",
      "createdAt": Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FireStore Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _firebaseDataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person),
              title: Text(_firebaseDataList[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _addFirebaseData();
          await _fetchFirebaseData();
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
