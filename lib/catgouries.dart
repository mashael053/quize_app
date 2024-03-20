import 'package:flutter/material.dart';
import 'package:quize_app/question.dart';

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
            catgouriestypeQuize("Programming Quiz", Color(0xFFFEB802) , context),
            catgouriestypeQuize("Mathematics Quiz", Color(0xFF01B6C9) ,context ),
            catgouriestypeQuize("Physics Quiz", Color.fromARGB(149, 151, 149, 144) , context),
          ],
        ),
      ),
    );
  }
}

Widget catgouriestypeQuize(String quizName, Color quizColor , context)  {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(top: 60),
      child: InkWell(
        onTap: () {    
          Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const Question(),
                        ));
          
        },
        child: Container(
          margin: EdgeInsets.all(9),
          height: 200,
          width: 350,
          child: Center(
            child: Text(
              quizName,
              style: TextStyle(
                fontFamily: 'GentiumBookPlus',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          color: quizColor,
        ),
      ),
    ),
  );
}