const express = require('express');
const buoyr = express();
const editor = express();

editor.use(express.static(__dirname+'/editor/build'));

buoyr.get('/', (req, res) => {
    res.send('Hello there, BuoyrTech!');
});

editor.get('*', (req, res) => {
    res.sendFile(__dirname+'/editor/build/'+'index.html');
});


buoyr.listen(8080);
editor.listen(8081);
