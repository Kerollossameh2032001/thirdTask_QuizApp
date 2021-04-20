import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'Congratulations.dart';
import 'Home.dart';

//int count = 0;

class QuestionScreen extends StatefulWidget {
  int index;
  QuestionScreen(this.index);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage('https://wallpapercave.com/wp/wp5586589.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(10.8, 45.0, 10.8, 10.8),
              alignment: Alignment.topLeft,
              child: Text(
                myQuiz.quiz[widget.index].question,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 300.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          onPressed: () {
                            if (myQuiz.quiz[widget.index].answer == true)
                              setState(() {
                                count++;
                                isCorrect = true;
                                isWrong = false;
                              });
                            else setState(() {
                              isCorrect = false;
                              isWrong = true;
                            });
                            },
                          color: Colors.white,
                          child: Text(
                            "True",
                            style: textStyle,
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
                          onPressed: () {
                            if (myQuiz.quiz[widget.index].answer == false)
                              setState(() {
                                count++;
                                isCorrect = true;
                                isWrong = false;
                              });
                            else setState(() {
                              isCorrect = false;
                              isWrong = true;
                            });
                          },
                          color: Colors.white,
                          child: Text(
                            "false",
                            style: textStyle,
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
                    SizedBox(
                      height: 40.0,
                    ),
                    Visibility(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "great !!",
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.greenAccent,
                            size: 40,
                          )
                        ],
                      ),
                      visible: isCorrect,
                      replacement: Visibility(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Wrong Answer.!",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.clear,
                              color: Colors.redAccent,
                              size: 40,
                            )
                          ],
                        ),
                        visible: isWrong,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          widget.index++;
          if(widget.index < 5) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index)));
          }else{
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Congratulation()));
          }
          print("${widget.index}");
          },
        backgroundColor: Colors.white,
        label: Text(
          "Next",
          style: textStyle,
        ),
        icon: Icon(
          Icons.next_plan_outlined,
          color: Colors.black,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            width: 3.0,
          ),
        ),
        splashColor: Colors.blueAccent,
        focusColor: Colors.blueAccent,
      ),
    );
  }
}
