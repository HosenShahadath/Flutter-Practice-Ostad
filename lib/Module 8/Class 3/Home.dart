import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int _count = 0;

  incrementcounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful widget'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Text(
          _count.toString(),
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: incrementcounter,
        child: Icon(Icons.add, size: 20,),
      ),
    );
  }
}
