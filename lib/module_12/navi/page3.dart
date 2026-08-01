import 'package:flutter/material.dart';

import '../../module11/Grid.dart';
class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page3',style: TextStyle(fontSize: 50),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridV()));
            }, child: Text('Grid')),
            ElevatedButton(onPressed: (){
            }, child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
