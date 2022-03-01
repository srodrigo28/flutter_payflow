import 'package:flutter/material.dart';

class AuthController{
  // ignore: unused_field
  var _isAuthenticated = false;
  // ignore: prefer_typing_uninitialized_variables
  var _user;

  get user => _user;

  void setUser(BuildContext context, user){
    if(user != null){
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacementNamed(context, "/login"
        // context, MaterialPageRoute(builder: (context) => const LoginPage())
      );
    }
  }
}