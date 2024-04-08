import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/utils/colors.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/create_room_screen.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/join_room_screen.dart';

import 'presentation/screens/main_menu_screen.dart';

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
      initialRoute: MainMenuScreen.routeName,
      routes: {
        MainMenuScreen.routeName : (context) => MainMenuScreen() ,
        CreateRoomScreen.routeName :(context) => CreateRoomScreen(),
        JoinRoomScreen.routeName :(context) => JoinRoomScreen(),

      },
    );
  }
}
