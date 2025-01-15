import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget{
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Class 3",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Class 3"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: (){print("This is a Button");},
                  child: Text("Send",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Icon(Icons.person, size: 25, color: Colors.red,),
                TextButton(onPressed: (){
                  print("I am TextButton");
                }, child: Text("Click me")),
                IconButton(onPressed: (){
                  print("This is IconButton");
                }, icon: Icon(Icons.add_a_photo,size: 50,color: Colors.red,
                ),
                ),
                GestureDetector(
                  onTap: (){
                    print("I am onTap");
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black,width: 3),
                      boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ]
                    ),
                    child: Text("This is a Container"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}