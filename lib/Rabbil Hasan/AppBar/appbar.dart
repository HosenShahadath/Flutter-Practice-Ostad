import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Bar",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App",),
        titleSpacing: 20,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        // elevation: 0,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){MySnackBar("I am comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I am setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("I am email", context);}, icon: Icon(Icons.email)),
        ],
      ),
    );
  }

}