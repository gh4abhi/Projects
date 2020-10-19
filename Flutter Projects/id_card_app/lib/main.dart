import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IdApp());
}

class IdApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        backgroundColor: Colors.teal,
        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/2.jpg'),
              ),
              Text(
                'Tiger',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'A KING IS EVERYWHERE A KING ',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                  color: Colors.white,
                  child:Padding(
                      padding:  EdgeInsets.all(4.0),
                      child: ListTile(
                        leading:Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        title:Text(
                          '+91-8877665542',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'SourceSansPro',
                            color: Colors.teal.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ) ,
                      ),
                  ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0),
                color: Colors.white,
                child:Padding(
                  padding:  EdgeInsets.all(4.0),
                  child: ListTile(
                    leading:Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title:Text(
                      'tiger@jungle.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ) ,
                  ),
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}



