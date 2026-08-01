import 'package:flutter/material.dart';
class hotel extends StatelessWidget {
  const hotel({super.key});

  @override
  Widget build(BuildContext context) {
    bool likle = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                shadowColor: Colors.black,
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                      child: Image.network('https://images.unsplash.com/photo-1445019980597-93fa8acb246c?q=80&w=1174&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                        left: 20,
                        right: 20,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent.withOpacity(.5),
                            foregroundColor: Colors.white
                          ),
                            onPressed: (){}, child: Text('Book Now',style: TextStyle(fontSize: 20),))),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Stack(
                        children: [
                          Container(
                          height: 30,
                          width: 40,
                            decoration: BoxDecoration(
                              color:Colors.blueAccent.withOpacity(.5),
                                borderRadius: BorderRadius.circular(10)
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('5.5',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          )
                        ]
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 72,
                              decoration: BoxDecoration(
                                  color:Colors.blueAccent.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(10)
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.5),
                              child: Text('DHAKA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                            )
                          ]
                      ),
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
