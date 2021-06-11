var express = require('express');
var app = express();


app.get('/', (req, res) => {
    res.send('Hello there, BuoyrTech!');
});

app.listen(8080);

