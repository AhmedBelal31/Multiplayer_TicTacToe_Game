// importing modules
const { Socket } = require("dgram");
const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
const Room = require('./models/room');

const app = express();
const port = process.env.PORT || 3000;

var server = http.createServer(app);

// middleware 

app.use(express.json());



const DB = 'mongodb+srv://ahmedbelal31:Ad312001@cluster0.9ezgigl.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0';
mongoose.connect(DB).then(
    () => {
        console.log('DB Connection Successful !');
    }

).catch((e) => {
    console.log(e);
});


var io = require("socket.io")(server);

io.on("connection", (socket) => {
    console.log("connected!");
    socket.on('createRoom', async ({ nickname }) => {
        console.log(nickname);
        try {
            let room = new Room();
            let player = {
                socketID: socket.id,
                nickname: nickname,
                playerType: 'X',
            };
            room.players.push(player);
            room.turn = player;

            await room.save();
            console.log(room);
            const roomId = room._id.toString();
            socket.join(roomId);

            // room is Created 

            //io=> send data to everyone 
            // socket -> send data to yourself 
            io.to(roomId).emit('CreateRoomSuccess' , room);


        }
        catch (e) {
            console.log(e);
        }

    });
});

server.listen(port, "0.0.0.0", () => {
    console.log(`Server started and running on port ${port}`);
});








