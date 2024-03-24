import 'package:flutter/material.dart';
import 'package:quize_app/homePage.dart';
import 'package:quize_app/username.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
      
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assest/images/congouration.png'),
                width: 310,
                height: 300,
              ),
//         const Text(
//   "Congratulations",
//   style: TextStyle(
//     color: Colors.black,
//     fontFamily: 'GentiumBookPlus',
//     fontSize: 40,
//     fontWeight: FontWeight.normal,
//   ),  
// ),
  RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black ,fontFamily: 'GentiumBookPlus' ,  fontSize: 30 ), children: [
              const TextSpan(
                text: "Congratulations ",
              ),
              TextSpan(
                  text: userName.text,
                  style: const TextStyle(
                      color: Color(0xFF51829B),
                      fontFamily: 'GentiumBookPlus',
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ])),

    
              const Text(
                "9/10",
                style: TextStyle(
                  fontFamily: 'GentiumBookPlus',
                    fontSize: 40,
                    
                  color: Colors.black,
                  
                
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                      Radius.circular(30),
                        ),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
                  ),
                  child: const Text(
                    'Go To Agin Play',
                    
                    style: TextStyle(color: Colors.black ,
                    fontFamily: 'GentiumBookPlus',
                     fontSize: 24,),
                  ),
                  onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const HomePage(),
                        ));
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