import 'package:get/state_manager.dart';

class AuthenticationController extends GetxController {
  bool obscureText = true;

  // Function to toggle password visibility
  void _togglePasswordVisibility() {
    obscureText = !obscureText;
  }
}
