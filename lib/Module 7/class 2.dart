import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                  Text("Text-1"),
                  Text("Text-2"),
                  Text("Text-3"),
                  Text("Text-4"),
                  Text("Text-5"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}