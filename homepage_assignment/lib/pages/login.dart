import 'package:flutter/material.dart';
import 'package:homepage_assignment/main.dart';

// ignore: camel_case_types
class login extends StatefulWidget{
  @override
  _loginstate createState() => _loginstate();
}

class _loginstate extends State<login>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        
        title: Text(
          'Login',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color:Colors.orange[600],
          ),
        ),
        leading: TextButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, '/');
          }, 
          icon: Icon(
            Icons.arrow_left_rounded,
            color: Colors.orange[600],
            ), 
          label: Text(''),
          
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],

      ),
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              margin: EdgeInsets.only(top: 20),
              width: 350,
              child: TextField(
                
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter username'
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top:10),
              width: 350,
              child: TextField(
                
                decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter password'
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    )
                  ),
            ),
        Container(
          child: TextButton(
            
            onPressed:(){},
            child: (
              Text(
                'forgot password?',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[400],
                  ),
              )
            ),
            
            
          ),
        ),
      ],
    );
  }
}