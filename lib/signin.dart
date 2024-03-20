import 'package:flutter/material.dart';
import 'package:quize_app/catgouries.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                "assest/images/logo-quize.png",
                height: 300,
                width: 300,
              ),
            ),

            Center(
              child: Text(
                "SignIn Here",
                
                style: TextStyle(
                    fontFamily: 'GentiumBookPlus',
                  fontSize: 40,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Center the text horizontally
              ),
            ),
            Center(
              child: Container(
                width: 400, // Set the desired width
                height: 90,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text("UserName"),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        )),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400, // Set the desired width
                height: 90,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text("Password"),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        )),
                  ),
                ),
              ),
            ),

Container(
  child: Padding(
    padding: EdgeInsets.all(16.0), // Set the desired padding
    child: Text(
      'Forget password',
      
      style: TextStyle(
        fontWeight: FontWeight.normal,
          fontFamily: 'GentiumBookPlus',
        color: Colors.black,
        fontSize: 24,
      ),
    ),
  ),
) ,

  // Botton SignIn //
Padding(
  padding: EdgeInsets.all(8.0), // Set the desired padding
  child: SizedBox(
    width: MediaQuery.of(context).size.width / 1, // Set the desired width
    height: 50, // Set the desired height
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
        'SignIn',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'GentiumBookPlus',
          fontSize: 30,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const Catgouries(),
          ),
        );
      },
    ),
  ),
),
Container(
  margin: EdgeInsets.all(8.0),
  child: Row(
    children: [
      Text(
        "I don't have an account?",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: 'GentiumBookPlus',
          fontSize: 24,
        ),
      ),
      Text(
        "Signin",
        style: TextStyle(
          color: Colors.yellow[700],
          fontWeight: FontWeight.w500,
          fontFamily: 'GentiumBookPlus',
          fontSize: 24,
        ),
      ),
    ],
  ),
)

          ],
        ),
      ),
    );
  }
}
