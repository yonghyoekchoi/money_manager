import 'package:flutter/material.dart';
import 'package:money_manager/auth/auth_gate.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://oldhwuqmpnklmgujpfuc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9sZGh3dXFtcG5rbG1ndWpwZnVjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk0NDE1MDQsImV4cCI6MjA1NTAxNzUwNH0.5xhmfrOhmWcJYRQSi5ld8mVKCjRp5bDJlTKJb5MGxl8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate(),
    );
  }
}
