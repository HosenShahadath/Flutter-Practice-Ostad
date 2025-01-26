import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Module91());
}

class Module91 extends StatelessWidget {
  const Module91({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilderClas(),
    );
  }
}

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          height: screenHeight * 0.8,
          width: screenWidth * 0.5,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              'Responsive Design',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class WrapExample extends StatelessWidget {
  final List<String> categories = [
    'Fruits',
    "Vegetable",
    "Dairy",
    "Meat",
    "Fish",
    "Bakery",
    "snacks",
    "Drinks",
    "Frozen"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),
      body: Column(
        children: [
          Wrap(
              spacing: 10,
              runSpacing: 20,
              children: categories.map((category) {
                return Chip(
                  label: Text(
                    category,
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blueAccent,
                );
              }).toList()),
          SizedBox(height: 20,),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              children: List.generate(
                  15,
                  (index) => Container(
                    color: Colors.blueAccent,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutBuilderClas extends StatelessWidget {
  const LayoutBuilderClas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuider"),
      ),
      body: LayoutBuilder(
          builder: (context, con) {
            if(con.maxWidth > 600){
              return Center(
                child: Text("This is tablet layout."),
              );
            }else{
              return Center(
                child: Text('This is mobile layout'),
              );
            }
          },
      ),
    );
  }
}


