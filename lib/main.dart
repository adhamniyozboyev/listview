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
  TextEditingController controller=TextEditingController();
  List lst=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          subtitle: Text('name'),
          title: TextField(),
          leading: IconButton(onPressed: (){
            setState(() {
              if(controller.text!=''){
              
              }
            });
          }, icon: Icon(Icons.add_box)),
          trailing: Icon(Icons.download_for_offline),
        )
      ]),
    );
  }
}
