import 'package:familytree/NavBar.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('Family Trees'),
        actions: const [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Text'),
      ),
      floatingActionButton: const FloatingActionButton(
          tooltip: 'Add', child: Icon(Icons.add), onPressed: null),
    );
  }
}
