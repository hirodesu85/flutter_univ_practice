import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Youtube Trace'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.network(
                      'https://momochy.com/wp-content/uploads/2023/01/%E3%83%98%E3%83%83%E3%83%80%E3%83%BC_02.jpg',
                      fit: BoxFit.cover),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('User Name',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('@user_name',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                        Text('21.5K followers',
                            style: TextStyle(
                              fontSize: 14,
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_add),
                            Text('Follow'),
                          ],
                        ))),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140,
                      height: 70,
                      child: Image.network(
                        'https://medibangpaint.com/wp-content/uploads/2022/10/4c266d3ba843fe327b3c6ebf237a6678.jpg',
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ソフトウェア工学の期末試験は難しい',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('244 vies・1 day ago',
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
