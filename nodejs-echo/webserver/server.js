'use strict';



var PORT = 8888;

var express = require('express');
var bodyParser = require('body-parser');

var app = express();
var server = require('http').createServer(app);

// app.use(bodyParser.urlencoded({    
//   extended: true
// }));

app.use(function(req, res, next) {
  var data = '';
  req.on('data', function(chunk) { 
    data += chunk;
  });
  req.on('end', function() {
    req.rawBody = data;
  });
  next();
});

var rawBodySaver = function (req, res, buf, encoding) {
  if (buf && buf.length) {
    req.rawBody = buf;//.toString(encoding || 'utf8');
  }
}

app.use(bodyParser.raw({ verify: rawBodySaver, type: function () { return true } }));

app.post('/', function (req, res) {
  console.log(req.rawBody.toString('hex') );

  res.send(req.rawBody);

});

app.get('/', function (req, res) {


  res.send("req.rawBody");

});


server.listen(PORT);

console.log('Running on http://localhost:' + PORT);