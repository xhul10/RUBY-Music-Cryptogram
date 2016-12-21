$(document).ready(function() {
  $(".b").click(function(event) {
  var audioElement = document.createElement('audio');

  $("audioElement").setAttribute('src', '/audio/bnote.wav');
  $("audioElement").setAttribute('autoplay', 'autoplay');
  $("audioElement").play();
  event.preventDefault();
  }
  
  $('.b').keypress(function (e) {
   var key = e.which;
   if(key == 13)  // the enter key code
    {
      $('.b').click()  ;
      return false;
    }
  });
});
