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
  TextEditingController controller = TextEditingController();
  List<String> list = [];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: (() {
                  setState(() {
                    if (controller.text != '') {
                      list.add(controller.text);
                      controller.text = '';
                    }
                  });
                }),
                icon: const Icon(
                  Icons.add_box_rounded,
                  color: Colors.blue,
                )),
            title: TextField(
                controller: controller, decoration: InputDecoration()),
            subtitle: Text('Enter name'),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    list.removeRange(0, list.length);
                  });
                },
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.green,
                )),
          ),
          Column(children: lstTile())
        ],
      ),
    );
  }

  List<Widget> lstTile() {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(
        ListTile(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_rounded),
          ),
          trailing: IconButton(
            onPressed: () {
              setState(() {
                list.removeAt(i);
              });
            },
            icon: const Icon(
              Icons.delete,
              color: Color(0xFFEB5E54),
            ),
          ),
          title: TextField(  
            
            decoration: InputDecoration(suffix:Text(list[i]) ,border: OutlineInputBorder()),
          ),
          subtitle: Text('$i person\'s name'),
        ),
      );
    }
    return lst;
  }
}
