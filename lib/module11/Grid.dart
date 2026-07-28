import 'package:flutter/material.dart';
class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 20,
          itemBuilder: (context,index){
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text('cash out')
                ],
              ),
            );
          }
      )
      // GridView.count(
      //   crossAxisCount: 3,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     children: [
      //       Container(
      //         color: Colors.red,
      //       ),
      //       Container(
      //         color: Colors.green,
      //       ),
      //       Container(
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         color: Colors.yellow,
      //       )
      //     ],
      // ),
    );
  }
}
