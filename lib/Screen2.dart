import 'package:flutter/material.dart';
import 'package:flutter1_04/consr_routes.dart';
import 'package:lottie/lottie.dart';
import 'void.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _HomeState();
}

class _HomeState extends State<Screen2> {
  final _formkey = GlobalKey<FormState>();
  bool isVisible = true;
  var passwordlength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      // ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Image.network("https://i.pinimg.com/enabled/564x/9c/5a/85/9c5a856ce66ad576d245f02d758b063a.jpg",
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
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
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF15b9b4),
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
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
SizedBox(
  height: 15,
),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: decorationUserName(
                        lab: "Email",
                        hint: "ex@gmail.com",

                      ),
                      validator: (username) {
                        if (username == null || username.isEmpty) {
                          return "Please enter a username or email";
                        } else if (!RegExp(r'^[a-zA-Z0-9]+$')
                            .hasMatch(username) &&
                            !isValidEmail(username)) {
                          return "Username must be alphanumeric or a valid email";
                        }
                        return null;
                      },
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
                  SizedBox(
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLength: 20,
                      onChanged: (value) {
                        setState(() {
                          passwordlength = value.length;
                        });
                      },
                      style: TextStyle(color:Colors.black),
                      keyboardType: TextInputType.text,
                      obscureText: isVisible,
                      decoration: decorationPassword(
                        lab: "password",
                        hint: "Enter your password",
                        // icon: Icons.password,
                        isVisible: isVisible,
                        onToggleVisibility: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        // passwordlengthVoid: passwordlength.bitLength,
                      ),
                      validator: (Password) {
                        if (Password == null || Password.isEmpty) {
                          return "Please enter password";
                        } else if (Password.length < 8) {
                          return "Password must be at least 8 characters";
                        } else if (!passwordbool(Password)) {
                          return "Password must contain A-Z, a-z, # \$ @ ! % &";
                        }
                        return null;
                      },
                    ),
                  ),
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

                  // SizedBox(height: 2),
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
                          print("No error");
                        Navigator.of(context).pushNamed(route4);
                        }
                        else {
                          print("Error");
                        }
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(route1);
                    },
                    child: Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF15b9b4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
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
