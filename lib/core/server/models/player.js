const mongoose = require('mongoose');

const playerSchema = new mongoose.Schema(
    {
        nickname: {
            type: String,
            trim: true, // "     Ahmed          " remove Space =>"Ahmed" ;
        },
        socketID:
        {
            type: String,

        },

        points: {
            type: Number,
            default: 0,
        },
        //Player X OR Player O 
        playerType: {
            type: String,
            required: true,
        }
    }

);
module.exports = playerSchema;