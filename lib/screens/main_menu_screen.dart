import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/responsive/responsive.dart';
import 'package:multiplayer_tic_tac_toe_game/screens/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {},
              text: 'Create Room',
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {},
              text: 'Join Room',
            ),
          ],
        ),
      ),
    );
  }
}
