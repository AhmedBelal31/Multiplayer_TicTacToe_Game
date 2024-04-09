import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/responsive/responsive.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/widgets/custom_button.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/widgets/custom_text.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                  color: Colors.blue,
                  blurRadius: 40,
                ),
              ], text: 'Create Room', fontSize: 70),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                controller: _nameController,
                hintText: 'Enter your nickname',
              ),
              SizedBox(height: size.height * 0.045),
              CustomButton(
                onPressed: () {},
                text: 'Create',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
