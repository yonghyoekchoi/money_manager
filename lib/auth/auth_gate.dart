import 'package:flutter/material.dart';
import 'package:money_manager/control.dart';
import 'package:money_manager/pages/login_page.dart';
import 'package:money_manager/pages/profile_page.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        final session = snapshot.hasData ? snapshot.data!.session : null;

        if (session != null) {
          return const ControlTab();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
