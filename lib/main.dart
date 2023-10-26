import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:ui_practice/day1/pages/home_page.dart';
import 'package:ui_practice/day2/providers/user_provider.dart';
import 'package:ui_practice/day2/screens/home_screen.dart';
import 'package:ui_practice/day2/screens/signup_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home App',
      home: SignupScreen(),
    );
  }
}
