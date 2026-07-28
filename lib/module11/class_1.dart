import 'package:flutter/material.dart';
class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context,index){
          return Card(
            color: Colors.white,
            elevation: 10,
            child: ListTile(
              title: Text('Rayjan $index'),
              subtitle: Text('01614201748'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete,color: Colors.red,),
            ),
          );
          }
      )
      // ListView(
      //   children: [
      //     Card(
      //       color: Colors.orange,
      //       elevation: 10,
      //       child: ListTile(
      //         title: Text('Rayjan'),
      //         subtitle: Text('01614201748'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     )
      //   ],
      // ),

    );
  }
}
