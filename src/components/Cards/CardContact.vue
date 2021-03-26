<template>
  <div id="Contact">
    <h1>Contact</h1>
    <hr class="mb-10" />
    <p class="web-link">
      <a href="https://github.com/deivit24"
        ><v-icon x-large>mdi-github</v-icon></a
      >
      <a href="https://www.linkedin.com/in/david-a-salazar-aa6a2750/"
        ><v-icon x-large>mdi-linkedin</v-icon></a
      ><a href="https://www.facebook.com/AugieSal"
        ><v-icon x-large>mdi-facebook</v-icon></a
      >
      <a href="https://www.instagram.com/deivit24"
        ><v-icon x-large>mdi-instagram</v-icon></a
      >
    </p>
    <p class="item-left ">
      <a class="email" href="mailto:david.asal@hotmail.com"
        >david.asal@hotmail.com</a
      >
      <br />
      <a class="email" href="tel:+19568676720">956.867.6720</a>
    </p>
    <div class="resume mb-5">
      <a :href="pdfLink" target="_blank"> Resume </a>
    </div>
  </div>
</template>

<script>
import resume from '../../assets/resume.pdf';
export default {
  name: 'CardContact',
  data() {
    return {
      pdfLink: resume,
    };
  },
};
</script>

<style>
#Contact .web-link {
  display: flex;
  justify-content: space-evenly;
  font-size: 3rem;
}
#Contact .web-link a {
  text-decoration: none;
  color: #35434f;
}
#Contact .web-link a:hover {
  color: #40a9ff;
}
#Contact .item-left {
  text-align: center;
}
#Contact .item-left a {
  text-decoration: none;
  color: #35434f;
  font-size: 1.5rem;
}
#Contact .item-left a:hover {
  color: #212931;
}
#Contact .resume {
  text-align: center;
  margin-top: 50px;
}
#Contact .resume a {
  text-decoration: none;
  font-size: 2rem;
  color: white;
  background: #35434f;
  padding: 10px 15px;
  border-radius: 10px;
  transition: all ease-in-out 0.2s;
}
#Contact .resume a:hover {
  background: #40a9ff;
  color: white;
}
</style>
