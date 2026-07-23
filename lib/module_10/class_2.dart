import 'package:flutter/material.dart';
class Class2 extends StatelessWidget {
  const Class2({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 2'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.network('https://objectstorage.ap-dcc-gazipur-1.oraclecloud15.com/n/axvjbnqprylg/b/V2Ministry/o/office-bzs-school/2024/12/bc7a6ef7d02e42b9bcf9e0f0c6ceef0b.png',
            height: 100,
              width: 100,
            ),
            GestureDetector(
              onTap: (){
                print('LPOgo');
              },
              child: Image.asset('assets/logo.png',
                height: 200,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: phoneController,
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Phone Number';
                  }else if (value.length != 11){
                    return "Enter Valid Phone Number";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passController,
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter Password';
                    }else if (value.length < 6){
                      return "Password must be 6 character";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'Pass Word',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  )
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Log IN Successful'))
                      );
                    }
                  }, child: Text('Suhbmit')),
            )
          ],
        ),
      ),
    );
  }
}
