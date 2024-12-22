import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _firebaseDataList = [];

  void _fetchFirebaseData() async {
    await FirebaseFirestore.instance.collection("posts").get().then((event) {
      for (var doc in event.docs) {
        setState(() {
          final text = doc.data()["text"];
          _firebaseDataList.add(text);
        });
      }
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
        onPressed: _fetchFirebaseData,
        tooltip: 'Fetch Firebase Data',
        child: const Icon(Icons.add),
      ),
    );
  }
}
