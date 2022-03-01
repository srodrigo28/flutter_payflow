import 'package:flutter/material.dart';
import 'package:flutter_payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  // ignore: unused_field
  var _isAuthenticated = false;
  // ignore: prefer_typing_uninitialized_variables
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user){
    if(user != null){
      saveUser(user);
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

  Future<void> saveUser(UserModel user) async{
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJson());
    return;
  }
  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    if (instance.containsKey("user")){
      await Future.delayed(const Duration(seconds: 10)); //
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else {
      setUser(context, null);
    }
  }
}