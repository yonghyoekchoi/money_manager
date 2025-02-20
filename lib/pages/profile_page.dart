import 'package:flutter/material.dart';
import 'package:money_manager/auth/auth_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final authService = AuthService();
  void logout() async {
    await authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final currentEmail = authService.getCurrentUserEmail();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Setting"),
          actions: [
            IconButton(
              onPressed: logout,
              icon: const Icon(Icons.logout),
            )
          ],
        ),
        body: Center(child: Text(currentEmail.toString())));
  }
}
