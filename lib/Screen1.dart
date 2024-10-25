import 'package:flutter/material.dart';
import 'package:flutter1_04/consr_routes.dart';
import 'package:lottie/lottie.dart';
import 'void.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _HomeState();
}

class _HomeState extends State<Screen1> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;
  var passwordlength=0;

  @override
  Widget build(BuildContext context) {
////////////////////////////////////////////////
    return Scaffold(
backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 280,
                        height: 170,
                        child:Image.network("https://img.freepik.com/premium-vector/save-planet-people-planting-earth_23-2148505984.jpg?w=740",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,),

                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color(0xFF087C7A),
                        fontWeight: FontWeight.w900,
                        // shadows: [
                        //   Shadow(
                        //     offset: Offset(1, 1),
                        //     color: Colors.grey.withOpacity(1),
                        //   ),
                        // ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Create a new account",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF087C7A),
                        fontWeight: FontWeight.w900,

                      ),
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
                  SizedBox(height: 40),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF087C7A)?? Colors.transparent,
                          Color(0xff15b9b4) ?? Colors.purple,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                        Navigator.of(context).pushNamed(route2);
                          print("No error");
                        } else {
                          print("Error");
                        }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          // fontFamily: "Trajan Pro",
                        ),
                      ),
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
 SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF087C7A)?? Colors.transparent,
                          Color(0xff15b9b4) ?? Colors.purple,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(route3);

                        if (_formkey.currentState!.validate()) {
                          print("No error");
                        } else {
                          print("Error");
                        }
                      },
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

  bool passwordbool(String pass) {
    String passwordPattern =
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[#$@!%&])[A-Za-z\d#$@!%&]{8,10}$';
    RegExp regExp = RegExp(passwordPattern);
    return regExp.hasMatch(pass);
  }

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

  bool isValidEmail(String email) {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }
}
