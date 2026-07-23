import 'package:flutter/material.dart';
class M10class3 extends StatelessWidget {
  const M10class3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;
    final Orientation orientation = MediaQuery.of(context).orientation;
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
            orientation == Orientation.portrait ?Column(
              children: [Container(
                height: screenHeight*0.18,
                width: screenWidth*0.6,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
              ),
                Text('Test',
                  style: TextStyle(
                      fontSize: 20
                  ),)],
            ) : Row(
              children: [Container(
                height: screenHeight*0.18,
                width: screenWidth*0.6,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
              ),
                Text('Test',
                  style: TextStyle(
                      fontSize: 20
                  ),)],
            ),
          ],
        ),
      ),
    );
  }
}
