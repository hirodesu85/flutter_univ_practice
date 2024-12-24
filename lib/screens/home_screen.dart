import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_univ_practice/models/post.dart';
import 'package:flutter_univ_practice/screens/form_screen.dart';
import 'package:flutter_univ_practice/screens/lobby_screen.dart';
import 'package:flutter_univ_practice/screens/update_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Post> _firebaseDataList = [];

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
          _firebaseDataList.add(Post(
            id: element.id,
            text: element["text"],
            createdAt: element["createdAt"].toDate(),
            updatedAt: element["updatedAt"].toDate(),
          ));
        });
      });
    });
  }

  Future _deleteFirebaseData(String id) async {
    await FirebaseFirestore.instance.collection("posts").doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FireStore Practice"),
        backgroundColor: Colors.blue,
        actions: [
          // ログアウトボタン
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LobbyScreen()),
                  (route) => false);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _firebaseDataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () async {
                // 画面遷移
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          UpdateScreen(_firebaseDataList[index])),
                );
                await _fetchFirebaseData();
              },
              leading: const Icon(Icons.person),
              title: Text(_firebaseDataList[index].text),
              trailing: IconButton(
                  onPressed: () async {
                    await _deleteFirebaseData(_firebaseDataList[index].id);
                    await _fetchFirebaseData();
                  },
                  icon: const Icon(Icons.delete)),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 画面遷移
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FormScreen()),
          );
          await _fetchFirebaseData();
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
