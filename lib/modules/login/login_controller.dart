import 'package:flutter/cupertino.dart';
import 'package:flutter_payflow/shared/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../shared/auth/auth_controller.dart';

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
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl
      );
      authController.setUser(context, user);
      // ignore: avoid_print
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      // ignore: avoid_print
      print(error);
    }
  }
}
