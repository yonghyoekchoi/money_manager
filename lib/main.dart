import 'package:flutter/material.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://oldhwuqmpnklmgujpfuc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9sZGh3dXFtcG5rbG1ndWpwZnVjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk0NDE1MDQsImV4cCI6MjA1NTAxNzUwNH0.5xhmfrOhmWcJYRQSi5ld8mVKCjRp5bDJlTKJb5MGxl8',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => const SignUp(),
        // '/magic_link': (context) => const MagicLink(),
        // '/update_password': (context) => const UpdatePassword(),
        // '/phone_sign_in': (context) => const PhoneSignIn(),
        // '/phone_sign_up': (context) => const PhoneSignUp(),
        // '/verify_phone': (context) => const VerifyPhone(),
        // '/home': (context) => const Home(),
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) => const Scaffold(
            body: Center(
              child: Text(
                'Not Found',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
