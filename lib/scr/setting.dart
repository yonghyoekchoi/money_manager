import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

SettingScreen setting() {
  return const SettingScreen();
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F7),
        body: SettingsList(
          lightTheme: const SettingsThemeData(
            settingsListBackground: Color(0xFFF2F2F7),
            settingsSectionBackground: Colors.white,
          ),
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  title: const Text('設定１'),
                  onPressed: (context) {},
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.lightBlue,
                  ),
                  title: const Text('設定２'),
                  onPressed: (context) {},
                ),
                SettingsTile.navigation(
                  leading: const Icon(
                    Icons.local_police,
                    color: Colors.grey,
                  ),
                  title: const Text('設定４'),
                  onPressed: (context) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
