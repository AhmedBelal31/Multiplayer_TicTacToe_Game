import 'package:socket_io_client/socket_io_client.dart' as IO;

// void main() {
//   // Connect to the Socket.io server
//   final socket = IO.io('http://192.168.1.2:3003', <String, dynamic>{
//     'transports': ['websocket'], // Use WebSocket transport
//     'autoConnect': false, // Disable auto-connect to handle connection state manually
//   });
//
//   // Handle connection event
//   socket.onConnect((_) {
//     print('Connected to server.');
//
//     // Sending data to the server
//     socket.emit('createRoom', {'nickname': 'John'});
//   });
//
//   // Handle disconnect event
//   socket.onDisconnect((_) {
//     print('Disconnected from server.');
//     socket.dispose(); // Clean up resources
//   });
//
//   // Handle error event
//   socket.onError((error) {
//     print('Error: $error');
//     socket.dispose(); // Clean up resources
//   });
//
//   // Connect to the server
//   socket.connect();
// }

void main() {

  IO.Socket socket = IO.io('http://localhost:3003', <String, dynamic>{'transports': ['websocket'], 'autoConnect': false,});
  socket.connect();



  // Handle connection event
  socket.onConnect((_) {
    print('Connected to server.');

  });
  socket.emit('msg', {'name' : 'ahmed' , 'age' :21});

  socket.on('res', (data){
    print(data);
  });
  // Handle disconnect event
  socket.onDisconnect((_) {
    print('Disconnected from server.');
    socket.dispose(); // Clean up resources
  });
}
