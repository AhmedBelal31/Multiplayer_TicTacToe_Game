import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/create_room_screen.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/join_room_screen.dart';
import '../../core/responsive/responsive.dart';
import '../widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';

  const MainMenuScreen({super.key});

  void _createRoom(context) {
    Navigator.of(context).pushNamed(CreateRoomScreen.routeName);
  }

  void _joinRoom(context) {
    Navigator.of(context).pushNamed(JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () => _createRoom(context),
              text: 'Create Room',
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () => _joinRoom(context),
              text: 'Join Room',
            ),
          ],
        ),
      ),
    );
  }
}
