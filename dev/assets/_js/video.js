document.addEventListener('DOMContentLoaded', (event) => {
  var heroVideo = document.querySelector('#hero-video');
  var buttonVideo = document.querySelector('#hero-video-control');
  var loader = document.querySelector('section.hero .loader');
  let videoIsPaused = heroVideo.paused;
  //console.log('video is paused?', videoIsPaused);
  loader.classList.add('hidden');
  buttonVideo.classList.add(heroVideo.paused ? 'play' : 'pause');
  console.log(heroVideo.paused);


  heroVideo.play();



  heroVideo.onplay = function () {
    heroVideo.style.objectFit = 'cover';
    //console.log('playing');
    buttonVideo.classList.replace('play', 'pause');
  }

  //console.dir(heroVideo)

  buttonVideo.addEventListener('click', (event) => {
    let paused = heroVideo.paused;

    //console.log('event-video paused?', paused);

    if (paused) {
      heroVideo.play()
      buttonVideo.classList.add('pause');
      buttonVideo.classList.remove('play');
      //console.log('now playing?');
      //console.log(!heroVideo.paused);
    } else {
      heroVideo.pause();
      buttonVideo.classList.add('play');
      buttonVideo.classList.remove('pause');
      //console.log('now paused?');
      //console.log(heroVideo.paused);
    }
  })
});
