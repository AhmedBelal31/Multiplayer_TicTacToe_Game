const mongoose = require('mongoose');
const playerSchema = require('./player');

const roomSchema = new mongoose.Schema(
    {
        occupancy: {
            type: Number,
            default: 2,
        },
        maxRounds: {
            type: Number,
            default: 6,
        },

        currentRound: {
            required: true,
            type: Number,
            default: 1,

        },

        players: [
            playerSchema
        ],
        //check if two players , No one else join => numbers of player (palyers.length== ocuupancy =2)
        isJoin: {
            type: Boolean,
            default: true,
        },

        turn: playerSchema,
        turnIndex: {
            type: Number,
            default: 0,
        }

    }
);

const roomModel = mongoose.model('Room', roomSchema);
module.exports = roomModel;