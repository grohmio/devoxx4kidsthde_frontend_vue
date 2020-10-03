<template>
  <div class="landing">

    <div id="devoxx_logo_back">
      <img id="devoxx_logo" src="https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kidsth_logo.png">
      <p>Programmieren für Kinder.
      <p><a class="button" href="http://www.devoxx4kids.de/thueringen/">Veranstaltungen</a>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Landing',
  data () {
    return {
      msg: 'Willkommen bei Devoxx4kids Thüringen'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
body {
  margin: 0;
  background: #000;
}

#devoxx_logo_back {
  font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
  font-weight:100;
  background: rgba(255, 255, 255, 0.6);
  color: black;
  padding: 2rem;
  width: 65%;
  margin:2rem;
  display: block;
  margin-left: auto;
  margin-right: auto;
  font-size: 1.8rem;
}
h1 {
  font-size: 3rem;
  text-transform: uppercase;
  margin-top: 0;
  letter-spacing: .3rem;
}

#devoxx_logo_back .button {
  display: inline-block;
  padding: .4rem;
  border: none;
  margin: 1rem auto;
  font-size: 1.3rem;
  background: rgba(255, 187, 0, 0.7);
  color: #fff;
  border-radius: 3px;
  cursor: pointer;
  transition: .3s background;
}
#devoxx_logo_back .button:hover {
   background: rgba(0,0,0,0.5);
}

a {
  display: inline-block;
  color: rgb(255, 208, 0);
  text-decoration: none;
}
a:hover{
  background:rgba(0,0,0,0.9);
}
@media screen and (max-width: 500px) {
  div{width:70%;}
}
@media screen and (max-device-width: 800px) {
  html { background: url(https://www.grohmio.com/assets/devoxx4kids_th_de_frontend/devoxx4kids_th_de_background.jpg) #000 no-repeat center center fixed; }
  #bgvid { display: none; }
}
#devoxx_logo {
  width: 80%;
  transition: width 1s;
}

#social_logo {
  width: 1.5rem;
  height: 1.5rem;
  transition: width 1s;
}
</style>
