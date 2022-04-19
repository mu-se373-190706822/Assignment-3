import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Home 1"),),
    body: BodyApp(),),);
  }
}
class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
      child: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          Text("press to count : ",style: TextStyle(fontSize: 30),),
        Text("$counter",style: TextStyle(fontSize: 25),),
        FloatingActionButton(child: Icon(Icons.add),onPressed: (){
          setState(() {
            counter++;
          });
        }),FloatingActionButton(child:Text("resut"),onPressed: (){
          setState(() {
            counter = 0;
          });
          })
        ],),
      ),
    );
  }
}


