import 'package:flutter/material.dart';
import 'package:whatsapp_clogne/common/theme/dark_theme.dart';
import 'package:whatsapp_clogne/common/theme/light_theme.dart';
import 'package:whatsapp_clogne/feature/auth/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clogne',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
