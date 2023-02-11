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
  TextEditingController controller = TextEditingController();
  // List<Map<int, Widget>> list = [];
  List<Widget> list = [];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // for (int i = 0; i <=5; i++)
    //   list.add(ListTile(
    //     leading: IconButton(onPressed: (){
    //       setState(() {
    //       if(controller.text!=''){
    //         list.add(Text());
    //       }

    //       });
    //     }, icon: Icon(Icons.local_hospital)),
    //     title: TextField(controller: controller,),
    //     subtitle: Text('Surname$i'),
    //     trailing: Icon(Icons.delete,color: Color.fromARGB(255, 194, 102, 96),),
    //   ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: IconButton(
                onPressed: (() {
                  setState(() {
                    if (controller.text != '') {
                      list.add(ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_box_rounded),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                list.removeAt(0);
                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Color(0xFFF57C73),
                            )),
                        title: Text(controller.text),
                        subtitle: Text('person\'s name'),
                      ));
                      controller.text='';
                      //     index += 1;
                      //     list.add(
                      //       {
                      //         index: ListTile(
                      //           title: Text(controller.text),
                      //           trailing: IconButton(onPressed: (){
                      //             list.removeWhere((element) => element.keys.toList()[0] == index);
                      //           }, icon: const Icon(Icons.delete),),
                      //         ),
                      //       },
                      //     );
                    }
                  });
                }),
                icon: Icon(
                  Icons.add_box_rounded,
                  color: Colors.blue,
                )),
            title: TextField(
                controller: controller, decoration: InputDecoration()),
            subtitle: Text('Enter name'),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.download_for_offline)),
          ),
          Column(
            children: list,
          )
        ],
      ),
    );
  }
}
