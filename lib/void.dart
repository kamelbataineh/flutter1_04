import 'package:flutter/material.dart';
import 'package:flutter1_04/consr_routes.dart';
import 'package:lottie/lottie.dart';
import 'void.dart';
InputDecoration decorationUserName({
  required String lab,
  required String hint,
}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    // prefixIcon: Icon(
    //   icon,
    //   color: Colors.white,
    // ),
    labelStyle: TextStyle(
        fontSize: 20, color: Color(0xFF15b9b4), fontWeight: FontWeight.bold),
    hintStyle: TextStyle(
      color: Color(0xFF15b9b4),
    ),
    filled: true,
    fillColor: Colors.transparent,
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    errorStyle: TextStyle(color: Colors.red, fontSize: 10),
  );
}

///
///
///
InputDecoration decorationPassword({
  required String lab,
  required String hint,
  // required IconData icon,
  required bool isVisible,
  required VoidCallback onToggleVisibility,
  // required var passwordlengthVoid,
}) {
  return InputDecoration(
    suffixIcon: InkWell(
      child: Icon(isVisible ? Icons.visibility : Icons.visibility_off,
          color: Color(0xFF15b9b4)),
      onTap: onToggleVisibility,
    ),
    helperStyle: TextStyle(color: Color(0xFF15b9b4)),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    // prefixIcon: Icon(
    //   icon,
    //     color: Color(0xFF15b9b4)
    // ),
    labelStyle: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF15b9b4)),
    hintStyle: TextStyle(color: Color(0xFF15b9b4)),
    filled: true,

    fillColor: Colors.transparent,
    counter: TextButton(
      onPressed: () {

      },
      child: Text(
        "Forgot password?",
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFF15b9b4), // لون النص
        ),
      ),
    ),
    //
    // counterStyle: TextStyle(
    //   color: Colors.white,
    //   fontSize: 12,
    //   fontWeight: FontWeight.w400,
    // ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10),

    errorStyle: TextStyle(color: Colors.red, fontSize: 10),
  );
}

///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
InputDecoration decorationPassword2({
   ///////////////2
  required String lab,
  required String hint,
}) {
  return InputDecoration(

    helperStyle: TextStyle(color: Color(0xFF15b9b4)),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width: 2,

      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF15b9b4),
        width:2,

      ),
      borderRadius: BorderRadius.circular(20),
    ),
    labelText: lab,
    hintText: hint,
    // prefixIcon: Icon(
    //   icon,
    //     color: Color(0xFF15b9b4)
    // ),
    labelStyle: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF15b9b4)),
    hintStyle: TextStyle(color: Color(0xFF15b9b4)),
    filled: true,

    fillColor: Colors.transparent,
    // counter:
    //
    // counterStyle: TextStyle(
    //   color: Colors.white,
    //   fontSize: 12,
    //   fontWeight: FontWeight.w400,
    // ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10),

    errorStyle: TextStyle(color: Colors.red, fontSize: 10),
  );
}
