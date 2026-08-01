import 'package:flutter/material.dart';
class Alart extends StatelessWidget {
  const Alart({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlartDialog(){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text('Titel'),
        content: Text('Content'),
        actions: [
          TextButton(onPressed: (){}, child: Text('Yes')),
          TextButton(onPressed: (){}, child: Text('No'))
        ],

      ));

    }
    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=> SimpleDialog(
        title: Text('Titel'),
        children: [
          Text('Content'),
          TextField(),
          SimpleDialogOption(
            onPressed: (){
              print('Yes');},
            child: Text('Yes')
          ),
          Row(),
          Column()
        ],

      ));

    }
    void showSanckbar(){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Content'),
        action: SnackBarAction(label: 'Undo', onPressed: (){}),)
      );
    }
    void showBottomsheet(){
      showModalBottomSheet(context: context, builder: (context)=> Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chose Option'),
            ListTile(
              title: Text('OPtion - 01'),
            ),
            ListTile(
              title: Text('OPtion - 02'),
            ),
            ListTile(
              title: Text('OPtion - 03'),
            ),

          ],
        ),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Alart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showAlartDialog();
                }, child: Text('Alart')),
            ElevatedButton(
                onPressed: (){
                  showSimpleDialog();
                }, child: Text('Simple  Dialog')),
            ElevatedButton(
                onPressed: (){
                  showSanckbar();
                }, child: Text('Snack Bar')),
            ElevatedButton(
                onPressed: (){
                  showBottomsheet();
                }, child: Text('Bottom Sheet'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add)),

    );
  }
}
