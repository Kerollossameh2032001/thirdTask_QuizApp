import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Home.dart';
import 'Home.dart';
import 'questionScreen.dart';

class Congratulation extends StatefulWidget {
  @override
  _CongratulationState createState() => _CongratulationState();
}
class _CongratulationState extends State<Congratulation> {
  var str = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/class.jpg'),
               // NetworkImage('https://wallpapercave.com/wp/wp5586589.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text('Congratulations.... !!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.smiley, size: 30.0,),
                    Icon(CupertinoIcons.smiley, size: 30.0,),
                    Icon(CupertinoIcons.smiley, size: 30.0,),
                    Icon(CupertinoIcons.smiley, size: 30.0,),
                    Icon(CupertinoIcons.smiley, size: 30.0,),
                  ],
                ),
                SizedBox(height: 40,),
                Text("Thank you for attending this exam and good luck with other exams",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Text(
              str ,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 200.0),
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        str = "Your Grade is $count /5" ;
                      });
                    },
                    color: Colors.white,
                    child: Text(
                      "your grade",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          width: 3.0,
                        )),
                    splashColor: Colors.blueAccent,
                    highlightColor: Colors.grey,
                  ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        count = 0 ;
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()));
                    },
                    color: Colors.white,
                    child: Text(
                      "Try Again",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(
                          width: 3.0,
                        )),
                    splashColor: Colors.blueAccent,
                    highlightColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
