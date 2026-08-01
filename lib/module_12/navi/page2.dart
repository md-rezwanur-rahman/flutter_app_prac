import 'package:flutter/material.dart';
import 'package:my_app/module_12/navi/page3.dart';
class page2 extends StatelessWidget {
  final String name;
  const page2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: TextStyle(fontSize: 50),),
            Text('Page2',style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page3()));
            }, child: Text('Page3')),

          ],
        ),
      ),
    );
  }
}
