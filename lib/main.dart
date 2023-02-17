import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();
  List list = [];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
            subtitle: Text('name'),
            title: TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            leading: IconButton(
                onPressed: () {
                  setState(() {
                    if (controller.text != '') {
                      list.add(controller.text);

                      controller.text = '';
                    }
                  });
                },
                icon: Icon(
                  Icons.add_box,
                  color: Colors.blue,
                )),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    list.removeRange(0, list.length);
                  });
                },
                icon: Icon(
                  Icons.delete_forever,
                  color: Color.fromARGB(256, 191, 94, 87),
                ))),
        Column(
          children: lsttile(),
        )
      ]),
    );
  }

  List<Widget> lsttile() {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(ListTile(
        
        leading: Text('${i + 1}.',style: TextStyle(fontSize: 30),),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              list.removeAt(i);
            });
          },
          icon: Icon(
            Icons.delete,
            color: Colors.redAccent,
          ),
        ),
        title: Row(
          children: [
            
            Text(list[i]),
          ],
        ),
        subtitle: Text('person\'s name'),
      ));
    }
    return lst;
  }
}
