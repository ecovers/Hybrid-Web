const express = require('express');
  app = express();
  server = require('http').Server(app),
  io = require('socket.io')(server),
  rtsp = require('rtsp-ffmpeg');
server.listen(9002); //열고싶은 포트번호 입력
// var uri = 'rtsp://192.168.50.55:9001/stream', 
var uri = 'rtsp://localhost:9001/stream', 
  stream = new rtsp.FFMpeg({input: uri});
io.on('connection', function(socket) {
  var pipeStream = function(data) {
    socket.emit('data', data.toString('base64'));
  };
  stream.on('data', pipeStream);
  socket.on('disconnect', function() {
    stream.removeListener('data', pipeStream);
  });
});

// app.use('/static', express.static(__dirname + '/Web Streaming test'));

app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res) {
  
  res.sendFile(__dirname + '/camera.html');
});