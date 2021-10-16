
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/passenger.png'),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Traveller 369",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Bebas',
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: (FontStyle.italic),
                      letterSpacing: 2.0
                  ),
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(Icons.hotel,color: Colors.white,), 
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: (){
                      print('You clicked Stays');
                    },
                    child: Text('Stays'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.amberAccent,width: 2.0),
                      minimumSize: Size(190, 40)
                    ),
                  ),
                )
                    ],
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(Icons.airplanemode_active,color: Colors.white,),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: (){
                      print('You clicked Flights');
                    },
                    child: Text('Flights'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.amberAccent,width: 2.0),
                      minimumSize: Size(190, 40)
                    ),
                    ),
                  )
              ],
                    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(Icons.car_rental,color: Colors.white,),
                ),
                Container(
                  child: OutlinedButton(
                    onPressed: (){
                      print('Youve clicked Cars');
                    },
                    child: Text('Cars'),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(color: Colors.amberAccent,width: 2.0),
                      minimumSize: Size(190, 40)
                    ),
                    ),
                  )
              ],
                    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(Icons.maps_home_work,color: Colors.white,)
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: (){
                      print('You clicked All-Inclusive Vacations');
                    },
                    
                    child: Text('All-Inclusive Vacations',),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amberAccent,
                      onPrimary: Colors.black,
                      minimumSize: Size(190, 40)
                    ),
                  ),
                )
              ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

