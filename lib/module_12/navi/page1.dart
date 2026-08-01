import 'package:flutter/material.dart';
import 'package:my_app/module_12/navi/page2.dart';
class page1 extends StatelessWidget {

  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>page2(name: 'Rayjan',)));
              }, child: Text('Nav-2')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>page2(name: 'Rayjan',)));
              }, child: Text('Page2')),
              ElevatedButton(onPressed: (){}, child: Text('Page3')),
              Divider(),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/page2');
              }, child: Text('Navi 2.0 Page2')),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacementNamed(context, '/page2');
              }, child: Text('page2 no back'))
            ],
          ),
        ),
      ),
    );
  }
}
