import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      // ignore: avoid_print
      print(response);
    } catch (error) {
      // ignore: avoid_print
      print(error);
    }
  }
}
