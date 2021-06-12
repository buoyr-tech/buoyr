const express = require('express');
const buoyr = express();
const editor = express();
const sailor = express();

editor.use(express.static(__dirname+'/editor/build'));
sailor.use(express.static(__dirname+'/sailor/build'));

buoyr.get('/', (req, res) => {
    res.send('Hello there, BuoyrTech!');
});

editor.get('*', (req, res) => {
    res.sendFile(__dirname+'/editor/build/'+'index.html');
});

sailor.get('*', (req, res) => {
    res.sendFile(__dirname+'/sailor/build/'+'index.html');
});


buoyr.listen(8080);
editor.listen(8081);
sailor.listen(8082);
