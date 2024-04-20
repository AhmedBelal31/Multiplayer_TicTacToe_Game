import 'package:socket_io_client/socket_io_client.dart' as IO;

// class SocketClient {
//   IO.Socket? socket;
//
//   static SocketClient? _instance;
//
//   SocketClient._internal() {
//     socket = IO.io('https://192.168.1.2:3000', <String, dynamic>{
//       'transports': ['websocket'],
//       'autoConnect': false,
//     });
//     socket!.onConnect((_) {
//       print('Connected to server.');
//     });
//     socket!.connect();
//   }
//
//   static SocketClient get instance {
//     _instance ??= SocketClient._internal();
//     return _instance!;
//   }
//
//
// }
//

class SocketService {
  final IO.Socket socket;

  // Define constant IP address
  static const String serverIp = 'http://192.168.1.2:3000';

  SocketService()
      : socket = IO.io(serverIp, <String, dynamic>{
    'transports': ['websocket'], // Use WebSocket transport
    'autoConnect': false, // Disable auto-connect to handle connection state manually
  });

  void defineSocket() {
    // Handle connection event
    socket.onConnect((_) {
      print('Connected to server  .');
    });

    socket.connect();
  }
}
