import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: ("Tab"),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:Text("Tab"),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.android),text: ("Android"),),
            Tab(icon: Icon(Icons.phone_iphone),text: ("Iphone"),),
          ]
          
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Android",style: TextStyle(fontSize: 40,color: Colors.black),),

          ),
          Center(child: Text("Iphone",style:TextStyle(fontSize: 40,color: Colors.black) ,),),
        ],),
      ),
    );
  }
}
