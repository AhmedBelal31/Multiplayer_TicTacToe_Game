import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/resources/socket_client.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/game_screen.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;




// class SocketMethods {
//   // final _socketClient = SocketClient.instance.socket!;
//
//  final SocketService _socketClient = SocketService();
//
//
//
//   // EMITS
//   void createRoom(String nickname) {
//     _socketClient.defineSocket();
//     if (nickname.isNotEmpty) {
//       _socketClient.socket.emit('createRoom', {
//         'nickname': nickname,
//       });
//     }
//   }
//   void createRoomSuccessListener(BuildContext context) {
//     _socketClient!.socket.on('CreateRoomSuccess', (room) {
//       print(room);
//       Navigator.pushNamed(context, GameScreen.routeName);
//     });
//     }
// }
import 'package:flutter/material.dart';
import 'package:multiplayer_tic_tac_toe_game/core/resources/socket_client.dart';
import 'package:multiplayer_tic_tac_toe_game/presentation/screens/game_screen.dart';

class SocketMethods {
  final SocketService _socketClient = SocketService();

  // Method to create a room
  void createRoom(String nickname) {
    _socketClient.defineSocket(); // Initialize socket connection
    if (nickname.isNotEmpty) {
      _socketClient.socket.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }

  // Method to listen for room creation success event
  void createRoomSuccessListener(BuildContext context) {
    _socketClient.socket.on('CreateRoomSuccess', (room) {
      print(room);
      Navigator.pushNamed(context, GameScreen.routeName);
    });
  }
}
