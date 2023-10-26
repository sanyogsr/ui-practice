import "package:http/http.dart" as http;
import "package:flutter/material.dart";
import "package:ui_practice/day2/models/user.dart";
import "package:ui_practice/day2/utils/constants.dart";
import "package:ui_practice/day2/utils/utils.dart";

class AuthService {
  void signUpUser(
      {required BuildContext context,
      required String email,
      required String name,
      required String password}) async {
    try {
      User user =
          User(id: "", name: name, email: email, token: "", password: password);

      http.Response res = await http.post(
          Uri.parse("${Constants.uri}/api/signp"),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context,
                "Account has been created ! Login with the Same credentials");
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
