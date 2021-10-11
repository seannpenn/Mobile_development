import 'package:flutter/material.dart';
import 'package:homepage_assignment/main.dart';

class login extends StatefulWidget{
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login>{
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
      children: [
        TextField(
          decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter username'
          ),
        ),
        TextField(
          
          decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter password'
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
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
      ],
    );
  }
}