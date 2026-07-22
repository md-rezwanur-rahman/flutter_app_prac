import 'package:flutter/material.dart';
class class3 extends StatelessWidget {
  const class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Class 3'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(1000)
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(10))
                )
              ),
                onPressed: (){}, child: Text('Hi how is going on?')),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        // borderRadius: BorderRadius.circular(1000)
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(10))
                      )
                  ),
                  onPressed: (){
                    print('hi');
                  }, child: Text('Hi how is going on?')),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
                onPressed: (){
              print('submit');
            }, child: Text('submit')),
            TextButton(onPressed: (){}, child: Text('Readmore')),
            Icon(Icons.delete,color: Colors.red,size: 50,),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,size: 50,)),
            GestureDetector(
              onTap: (){
                print('onTap');
              },
              onLongPress: (){
                print('onLongPress');
              },
              child: Icon(Icons.phone,color: Colors.red,size: 50,),
            )

          ],
        ),
      ),
    );
  }
}
