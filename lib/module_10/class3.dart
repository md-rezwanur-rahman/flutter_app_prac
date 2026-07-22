import 'package:flutter/material.dart';
class M10class3 extends StatelessWidget {
  const M10class3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            Text('Test',
            style: TextStyle(
              fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}
