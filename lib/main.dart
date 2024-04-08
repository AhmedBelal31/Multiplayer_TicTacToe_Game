import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/utils/colors.dart';
import 'package:multiplayer_tic_tac_toe_game/screens/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData.dark(
        useMaterial3: false,
      ).copyWith(
        scaffoldBackgroundColor: bgcolor,
      ),
      debugShowCheckedModeBanner: false,
      home: MainMenuScreen(),
    );
  }
}
