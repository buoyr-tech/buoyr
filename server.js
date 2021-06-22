const express = require('express');
const buoyr = express();
const editor = express();
const makeWaves = express();
const anchor = express();

editor.use(express.static(__dirname+'/editor/build'));
makeWaves.use(express.static(__dirname+'/makeWaves/build'));
anchor.use(express.static(__dirname+'/anchor/build/web'));
buoyr.use(express.static(__dirname+'/buoyr/build/web'));


buoyr.get('*', (req, res) => {
    res.sendFile(__dirname+'/buoyr/build/web/'+'index.html');
});

editor.get('*', (req, res) => {
    res.sendFile(__dirname+'/editor/build/'+'index.html');
});

makeWaves.get('*', (req, res) => {
    res.sendFile(__dirname+'/makeWaves/build/'+'index.html');
});

anchor.get('*', (req, res) => {
    res.sendFile(__dirname+'/anchor/build/web/'+'index.html');
});


buoyr.listen(8080);
editor.listen(8081);
makeWaves.listen(8082);
anchor.listen(8083);
