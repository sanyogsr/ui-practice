import 'package:flutter/material.dart';
import 'package:ui_practice/day2/screens/login_screen.dart';
import 'package:ui_practice/day2/services/auth_service.dart';
import 'package:ui_practice/day2/utils/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
        context: context,
        email: emailController.text,
        name: nameController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "SignUp",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextfield(controller: nameController, hintText: "name"),
        CustomTextfield(controller: emailController, hintText: "email"),
        CustomTextfield(controller: passwordController, hintText: "password"),
        ElevatedButton(onPressed: signupUser, child: Text("Signup")),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Text("Login User?"),
        )
      ]),
    );
  }
}
