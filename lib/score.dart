import 'package:flutter/material.dart';
import 'package:quize_app/homePage.dart';

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
              const Text(
                'Congratulations',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'GentiumBookPlus',
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                               ),
              ),
    
              const Text(
                "9/10",
                style: TextStyle(
                  fontFamily: 'GentiumBookPlus',
                    fontSize: 35,
                    
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