import 'package:flutter/material.dart';
import 'questionScreen.dart';

final textStyle = TextStyle(
  color: Colors.black,
  fontSize: 40,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
);
int count = 0 ;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Home.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.8,45.0,10.8,10.8),
              alignment: Alignment.topCenter,
              child: Text("Welcome with you in Quiz",
                style: textStyle,),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 200.0),
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuestionScreen(0),),);
                },
                color: Colors.white,
                  child: Text("Start Quiz",
                    style: textStyle,
                  ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(width: 3.0,)
                ),
                splashColor: Colors.blueAccent,
                highlightColor: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
