import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question 1',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                "What is the best programming language for beginners?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              SizedBox(height: 16), 
              Container(
                color: Color(0xFFFEB802), 
                padding: EdgeInsets.all(8),
                child: Text(
                  "Python",
                  
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w500,
                    fontFamily: 'GentiumBookPlus',
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 16), 
              Container(
                color: Color(0xFF01B6C9), 
                padding: EdgeInsets.all(8),
                child: Text(
                  "JavaScript",
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w500,
                    fontFamily: 'GentiumBookPlus',
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 16), 
              Container(
                color: Color.fromARGB(149, 151, 149, 144), 
                padding: EdgeInsets.all(8),
                child: Text(
                  "C##",
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w500,
                    fontFamily: 'GentiumBookPlus',
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 16), 
              Container(
                color: Color(0xFF51829B), 
                padding: EdgeInsets.all(8),
                child: Text(
                  "Dart",
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w500,
                    fontFamily: 'GentiumBookPlus',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}