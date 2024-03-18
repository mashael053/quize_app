import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assest/images/bg.png'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assest/images/logo-quize.png'),
                width: 310,
                height: 300,
              ),
              const Text(
                'Its Quiz App',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                               ),
              ),
    
              const Text(
                "We Are Creative, enjoy our App",
                style: TextStyle(
                    fontSize: 25,
                  color: Colors.white,
                  
                
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
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
                    backgroundColor: MaterialStateProperty.all(Colors.yellow[700]),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Color.fromARGB(255, 228, 228, 228) , fontSize: ,),

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