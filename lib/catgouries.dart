import 'package:flutter/material.dart';
import 'package:quize_app/question.dart';
import 'package:quize_app/quesion_ans_quizeapp.dart';

class Catgouries extends StatelessWidget {
  const Catgouries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assest/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            catgouriestypeQuize("Programming Quiz", Color(0xFFFEB802), context , programmingQuizQuestionsAndAnswers ),
        
            catgouriestypeQuize("Mathematics Quiz", Color(0xFF01B6C9), context , mathematicsQuizQuestionsAndAnswers ),
            catgouriestypeQuize(
                "Biology Quiz", Color.fromARGB(149, 151, 149, 144), context ,biologyQuizQuestionsAndAnswers ),
          ],
        ),
      ),
    );
  }
}

Widget catgouriestypeQuize(String quizName, Color quizColor, context , List questionList) {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(top: 60),
      child: InkWell(
        onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Question(questionAndAnswereList: questionList)
                    ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(9),
          height: 200,
          width: 350,
          child: Center(
                  child: Text(
            quizName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ),
          color: quizColor,
        ),
      ),
    ),
  );
}
