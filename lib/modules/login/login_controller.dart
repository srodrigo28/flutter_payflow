import 'package:flutter/cupertino.dart';
import 'package:flutter_payflow/modules/auth/auth_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      authController.setUser(context, response);
      // ignore: avoid_print
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      // ignore: avoid_print
      print(error);
    }
  }
}
