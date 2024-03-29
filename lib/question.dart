import 'package:flutter/material.dart';
import 'package:quize_app/quesion_ans_quizeapp.dart';
import 'package:quize_app/score.dart';

class Question extends StatefulWidget {
  final List questionAndAnswereList;
  
Question({super.key, required this.questionAndAnswereList});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int _numberIndex = 0;
    int _currentScore = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                '${_numberIndex +1} / ${widget.questionAndAnswereList.length}',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF51829B),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                widget.questionAndAnswereList[0]["ques"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),

              SizedBox(height: 16),
              for (int i = 0;
                  i <
                      widget.questionAndAnswereList[_numberIndex]["answers"].length;
                  i++)
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                      colorsAnswares[i]
                      ),
                    ),
                    child:Text(widget.questionAndAnswereList[_numberIndex]["answers"][i]['ans'],
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GentiumBookPlus',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      _currentScore = widget.questionAndAnswereList[_numberIndex]["answers"][i]['score'] + _currentScore;
                        if ((_numberIndex + 1) <
                          widget.questionAndAnswereList.length) {
                        setState(() {
                          
                          _numberIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                 Score(
                                    score: _currentScore,
                                numberQuestions:
                                    widget.questionAndAnswereList.length
                                ),
                          ),
                        );
                      }
                    },
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
