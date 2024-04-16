// // importing modules
// const { Socket } = require("dgram");
// const express = require("express");
// const http = require("http");
// const mongoose = require("mongoose");


// const app = express();
// const port = process.env.PORT || 3000;

// var server = http.createServer(app);

// // middleware 

// app.use(express.json());

// server.listen(port, "0.0.0.0", () => {
//     console.log(`Server started and running on port ${port}`);
// });


// var io = require("socket.io")(server);

// io.on("connection", (socket) => {
//     console.log("connected!");
//     console.log(socket.id);
//     console.log(socket.log);
//     // socket.on('createRoom' ,({nickname})=>
//     // {

        
//     // } );
// });






// const DB = 'mongodb+srv://ahmedbelal31:Ad312001@cluster0.9ezgigl.mongodb.net/';
// mongoose.connect(DB).then(
//     () => {
//         console.log('DB Connection Successful !');
//     }

// ).catch((e) => {
//     console.log(e);
// });



const { Socket } = require('dgram');
const express = require('express');
const app = express();


//Server Connection 
const http = require('http');
var server =http.createServer(app);

app.use(express.json());

const socket = require('socket.io')(server);
// const  io = socket(server);

const port = process.env.PORT || 3003;

server.listen(port,"0.0.0.0", () => {
    console.log('Connection Done Ya m3lm !' + port);
});


socket.on('connection' ,(client)=>{
    console.log('Socket Connected ✔️');
    console.log(`Client ID is ${client.id} `);

    client.on('msg', (data) => {
        
        console.log(data.name);
        client.emit('res' , `hello ${data.name} , welcome`);
    });


} );

