$(document).ready(function() {
  $(".b:active").click(function(event) {
    var audioElement = document.createElement('audio');

    $("audioElement").setAttribute('src', '/audio/bnote.wav');
    $("audioElement").setAttribute('autoplay', 'autoplay');
    $("audioElement").play();
    event.preventDefault();
  }
});