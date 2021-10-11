
import 'package:flutter/material.dart';
import 'package:homepage_assignment/pages/login.dart';
void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes:{
    '/':(context) =>Home(),
    '/login':(context) => login(),
  },
    
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        
        title: Text(
          'Rubics',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color:Colors.orange[600],
          ),
        ),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(
            Icons.menu,
            color: Colors.orange[600],
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],

      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children:[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 0),
            child:Text(
              'Welcome to Rubics Game!',
              style:TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color:Colors.orange[600],
              
              )
            ),
          ),
          
          Container(
            child: Image(
              
              image: AssetImage('assets/rubics2.png'),
              
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
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
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                    )
                  ),
              ),
            ],
          ),
          
        ]
      ),
            
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {  },
      //   child: Text('Push'),
      //   backgroundColor: Colors.orange[600],
      // ),
    );
  }
}


