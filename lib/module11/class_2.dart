import 'package:flutter/material.dart';
class Module11Class2 extends StatelessWidget {
  const Module11Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 150,
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 45,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Image.network('https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=612x612&w=0&k=20&c=9QtwJC2boq3GFHaeDsKytF4-CavYKQuy1jBD2IRfYKc=',),
                Container(
                  color: Colors.black.withOpacity(.9),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('Best Deal',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                Image.network('https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=612x612&w=0&k=20&c=9QtwJC2boq3GFHaeDsKytF4-CavYKQuy1jBD2IRfYKc=',),
                Positioned(
                  bottom: 20,
                    left: 20,
                    right: 20,
                    child: ElevatedButton(onPressed: (){}, child: Text('Book Now')))
              ],

            )
          ],
        ),
      ),
    );
  }
}
