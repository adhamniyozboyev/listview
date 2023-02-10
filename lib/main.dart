import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Widget con = Text('Hello');
  List<Widget> list = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i <=100; i++)
      list.add(ListTile(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.local_hospital)),
        title: Text('Name $i'),
        subtitle: Text('Surname$i'),
        trailing: Icon(Icons.delete,color: Color.fromARGB(255, 194, 102, 96),),
      ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: list,
      ),
    );
  }
}
