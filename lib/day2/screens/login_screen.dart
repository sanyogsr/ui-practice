import 'package:flutter/material.dart';
import 'package:ui_practice/day2/screens/signup_screen.dart';
import 'package:ui_practice/day2/services/auth_service.dart';
import 'package:ui_practice/day2/utils/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AuthService authService = AuthService();

  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          "SignUp",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        CustomTextfield(controller: emailController, hintText: "email"),
        CustomTextfield(controller: passwordController, hintText: "password"),
        ElevatedButton(onPressed: signInUser, child: Text("Login")),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          child: Text("SignUp User?"),
        )
      ]),
    );
  }
}
