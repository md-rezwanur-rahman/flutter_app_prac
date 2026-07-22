import 'package:flutter/material.dart';
class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                    ),
                    helperText: 'Phone Num',
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Pass',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.red
                      ),
                      helperText: 'Pass',
                      labelText: 'Pass',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  // print(phoneController.text);
                  // print(passController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(passController.text))
                  );
                }, child: Text('Login')),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                      color: Colors.black
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        blurRadius: 10,
                        offset: Offset(5, 5)
                      ),
                      BoxShadow(
                          color: Colors.green.withOpacity(.5),
                          blurRadius: 10,
                          offset: Offset(-5, -5)
                      )
                    ],
                    color: Colors.red,
                  ),
                  child: Text('Hello'),
                )
              ],
            ),
          )
      ),
    );
  }
}
