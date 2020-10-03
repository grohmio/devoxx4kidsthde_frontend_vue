<template>
  <div id="app">
    <router-view/>

    <video poster="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kids_th_de_background.jpg" id="bgvid" playsinline autoplay muted loop>
      <!--- Video needs to be muted, since Chrome 66+ will not autoplay video with sound. WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button  -->
      <source src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kids_th_de_vid_back.mp4" type="video/mp4">
    </video>

    <div id="footer">
      <a href="https://www.youtube.com/channel/UCOwgd3L4cLbJw5ouaGrln2Q"><img id="social_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/youtube_social_icon_red.png"></a>
      <a href="http://www.devoxx4kids.de/thueringen/"><img id="social_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kidsth_head_logo_white_back_round.png"></a>
      <a href="//twitter.com/devoxx4kidsth"><img id="social_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/logo_twitter.png"></a>
      <a href="//winstagram.com/devoxx4kidsth"><img id="social_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/logo_instagram.png"></a>
      <a href="//medium.com/devoxx4kidsth"><img id="social_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/logo_medium.png"></a>
      <button>Pause</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Devoxx4Kids Thüringen',
  vid: document.getElementById('bgvid'),
  pauseButton: document.querySelector('#footer button'),
  methods: {
    vidFade () {
      this.vid.classList.add('stopfade')
    }
  }
}

if (window.matchMedia('(prefers-reduced-motion)').matches) {
  this.vid.removeAttribute('autoplay')
  this.vid.pause()
  this.pauseButton.innerHTML = 'Paused'
}

/*
this.vid.addEventListener('ended', function () {
  // only functional if "loop" is removed
  this.vid.pause()
  // to capture IE10
  this.vidFade()
})
*/

/*
this.vid.addEventListener('ended', function () {
  // only functional if "loop" is removed
  this.vid.pause()
  // to capture IE10
  this.vidFade()
})
*/

/*
this.pauseButton.addEventListener('click', function () {
  this.vid.classList.toggle('stopfade')
  if (this.vid.paused) {
    this.vid.play()
    this.pauseButton.innerHTML = 'Pause'
  } else {
    this.vid.pause()
    this.pauseButton.innerHTML = 'Paused'
  }
})
*/
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

video {
  position: fixed;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  z-index: -100;
  transform: translateX(-50%) translateY(-50%);
  background: url('https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kids_th_de_background.jpg') no-repeat;
  background-size: cover;
  transition: 1s opacity;
}

.stopfade {
  opacity: .5;
}

#footer {
  width: 100%;
  bottom: 0;
  position: fixed;
}

#footer button {
  position: fixed;
  right: 0.3rem;
  bottom: 0.3rem;
  padding: .1rem;
  border: none;
  font-size: 1rem;
  background: rgba(255,255,255,0.5);
  color: #fff;
  border-radius: 3px;
  cursor: pointer;
  transition: .3s background;
}

#footer button:hover {
  background: rgba(0,0,0,0.5);
}

#footer a {
  display: inline-block;
  color: rgb(255, 208, 0);
  text-decoration: none;
}

#footer #social_logo {
  vertical-align: middle;
  max-width: 1.5rem;
  max-height: 1.5rem;
  transition: width 1s;
}
</style>
