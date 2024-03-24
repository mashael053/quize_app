import 'package:flutter/material.dart';
import 'package:quize_app/catgouries.dart';
import 'package:quize_app/username.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key});

    

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signIn() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const Catgouries(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
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
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 90,
                    child: Center(
                      child: TextFormField(
                        controller: userName,
                        decoration: InputDecoration(
                          labelText: "UserName",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 400,
                    height: 90,
                    child: Center(
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
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
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow[700]),
                      ),
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 30,
                        ),
                      ),
                      onPressed: _signIn,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}