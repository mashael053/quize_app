import 'package:flutter/material.dart';
import 'package:quize_app/quesion_ans_quizeapp.dart';
import 'package:quize_app/score.dart';

class Question extends StatefulWidget {
  final List? questionAndAnswereList;
  
Question({super.key, this.questionAndAnswereList});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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
                '${_numberIndex +1} / ${widget.questionAndAnswereList!.length}',
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF51829B),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                widget.questionAndAnswereList![0]["ques"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              // SizedBox(height: 16),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute<void>(
              //         builder: (context) => const Score(),
              //       ),
              //     );
              //   },
              //   child: Container(       
              //     padding: EdgeInsets.all(8),
              //     child: SizedBox(
              //       width: MediaQuery.of(context).size.width / 1.4,
              //       child: ElevatedButton(
              //         style: ButtonStyle(
              //           shape: MaterialStateProperty.all(
              //             RoundedRectangleBorder(
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(30),
              //               ),
              //             ),
              //           ),
              //           backgroundColor: MaterialStateProperty.all(
              //             Color(0xFFFEB802),
              //           ),
              //         ),
              //         child: Text(widget.questionAndAnswereList![_numberIndex]["answers"] [0],
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontFamily: 'GentiumBookPlus',
              //             fontWeight: FontWeight.normal,
              //             fontSize: 20,
              //           ),
              //         ),
              //         onPressed: () {},
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 16),
              for (int i = 0;
                  i <
                      widget.questionAndAnswereList![_numberIndex]["answers"].length;
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
                    child:Text(widget.questionAndAnswereList![_numberIndex]["answers"][i],
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GentiumBookPlus',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                        if ((_numberIndex + 1) <
                          widget.questionAndAnswereList!.length) {
                        setState(() {
                          
                          _numberIndex++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const Score(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              // SizedBox(height: 16),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width / 1.4,
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //       shape: MaterialStateProperty.all(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(30),
              //           ),
              //         ),
              //       ),
              //       backgroundColor: MaterialStateProperty.all(
              //         Color.fromARGB(150, 213, 236, 248),
              //       ),
              //     ),
              //     child:Text(widget.questionAndAnswereList![_numberIndex]["answers"] [2],
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontFamily: 'GentiumBookPlus',
              //         fontWeight: FontWeight.normal,
              //         fontSize: 20,
              //       ),
              //     ),
              //     onPressed: () {},
              //   ),
              // ),
              // SizedBox(height: 16),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width / 1.4,
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //       shape: MaterialStateProperty.all(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(30),
              //           ),
              //         ),
              //       ),
              //       backgroundColor: MaterialStateProperty.all(
              //         Color(0xFF51829B),
              //       ),
              //     ),
              //     child: Text(widget.questionAndAnswereList![_numberIndex]["answers"] [3],
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontFamily: 'GentiumBookPlus',
              //         fontWeight: FontWeight.normal,
              //         fontSize: 20,
              //       ),
              //     ),
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
