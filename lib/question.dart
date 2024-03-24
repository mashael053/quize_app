import 'package:flutter/material.dart';
import 'package:quize_app/score.dart';

class Question extends StatelessWidget {
  final List? questionAndAnswereList;
  
Question({super.key, this.questionAndAnswereList});

  int _numberIndex = 0;

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
                '1/ ${questionAndAnswereList!.length}',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF51829B),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                questionAndAnswereList![0]["ques"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Score(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
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
                          Color(0xFFFEB802),
                        ),
                      ),
                      child: Text(questionAndAnswereList![_numberIndex]["answers"] [0],
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GentiumBookPlus',
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
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
                      Color(0xFF01B6C9),
                    ),
                  ),
                  child:Text(questionAndAnswereList![_numberIndex]["answers"][1],
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GentiumBookPlus',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 16),
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
                      Color.fromARGB(150, 213, 236, 248),
                    ),
                  ),
                  child:Text(questionAndAnswereList![_numberIndex]["answers"] [2],
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GentiumBookPlus',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 16),
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
                      Color(0xFF51829B),
                    ),
                  ),
                  child: Text(questionAndAnswereList![_numberIndex]["answers"] [3],
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GentiumBookPlus',
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
