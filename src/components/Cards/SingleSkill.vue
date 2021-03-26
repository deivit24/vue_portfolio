<template>
  <div class="mt-10">
    <li class="skill-set__item">
      <div class="skill-set__icon">
        <img :src="img" :alt="name" />
      </div>
      <div class="skill-set__detail">
        <div class="skill-set__meta">
          <div class="skill-set__name">
            <h4 class="small-title small-title--skill">
              {{ name }}
            </h4>
            <p class="skill-set__year">
              {{ moment() }}
            </p>
          </div>
          <p class="small-title small-title--skill skill-set__high">
            {{ num }}<span class="skill-set__ratio">%</span>
          </p>
        </div>
        <div :class="`skill-set__bar p${num} js-scroll in`"></div>
      </div>
    </li>
  </div>
</template>

<script>
import moment from 'moment';
import img from '../../assets/html.png';
export default {
  name: 'SingleSkill',
  props: {
    name: String,
    img: String,
    date: String,
    num: Number,
  },
  data: () => ({
    image: img,
  }),
  computed: {
    convertToString() {
      console.log(this.img);
      return this.img;
    },
  },
  methods: {
    moment() {
      return moment(this.date, 'YYYYMMDD').fromNow();
    },
  },
};
</script>

<style scoped>
h1 {
  margin: 0;
  font-family: 'Merriweather', serif;
  color: #ff3300;
}
h2 {
  margin-top: 15px;
  text-align: center;
  font-family: 'Merriweather', serif;
  color: #ff3300;
}
.who__text {
  margin-bottom: 2rem;
  font-family: 'Open Sans', sans-serif;
  font-size: 1.2rem;
}
@media screen and (max-width: 500px) {
  .who__text {
    margin-bottom: 1.5rem;
  }
}
.who__list {
  list-style-type: initial;
  list-style-position: outside;
  margin-left: 20px;
  margin-bottom: 1.5rem;
  font-family: 'Open Sans', sans-serif;
}
.who__list li {
  margin-bottom: 10px;
}

.small-title {
  font-size: 1.5rem;
  color: #072142;
  letter-spacing: 0.2em;
  line-height: 1;
  margin-bottom: 0;
  margin-top: 0;
  font-family: 'Open Sans', sans-serif;
}
@media screen and (max-width: 500px) {
  .small-title {
    font-size: 1.2rem;
  }
}
@media screen and (max-width: 500px) {
  .small-title--skill {
    font-size: 1rem;
  }
}
.skill-set__flex {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding-bottom: 50px;
}
@media screen and (max-width: 800px) {
  .skill-set__flex {
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-pack: start;
    -ms-flex-pack: start;
    justify-content: flex-start;
    padding-bottom: 50px;
  }
}
.skill-set__list {
  width: 100%;
  padding-left: 0px;
}
@media screen and (max-width: 800px) {
  .skill-set__list {
    width: 100%;
  }
  .skill-set__list:last-child {
    margin-top: 1.2rem;
  }
}
.skill-set__item {
  margin-top: 20px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.skill-set__item:first-child {
  margin-top: 0;
}
@media screen and (max-width: 500px) {
  .skill-set__item {
    margin-top: 3.2rem;
  }
}
.skill-set__icon {
  width: 48px !important;
  -ms-flex-item-align: center;
  align-self: center;
}
.skill-set__icon img {
  vertical-align: middle;
  width: 48px !important;
}
.skill-set__detail {
  width: 85.1063%;
}
.skill-set__meta {
  margin-bottom: 0.8rem;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.skill-set__name {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: end;
  -ms-flex-align: end;
  align-items: flex-end;
}
.skill-set__year {
  font-size: 1rem;
  line-height: 1;
  color: #35434f;
  margin-left: 1rem;
  margin-bottom: 0;
  margin-top: 0;
  letter-spacing: 0.2em;
}
@media screen and (max-width: 500px) {
  .skill-set__year {
    font-size: 0.8rem;
  }
}
.skill-set__ratio {
  font-size: 1.6rem;
  line-height: 1.2;
  color: #072142;
}
@media screen and (max-width: 500px) {
  .skill-set__ratio {
    font-size: 1rem;
  }
}
.skill-set__high {
  color: #ff3300;
}
.js-scroll {
  transition: 1s all ease-in-out;
}
.skill-set__bar {
  width: 100%;
  height: 1.4rem;
  background: #fff;
  position: relative;
  border-radius: 10px;
  -webkit-box-shadow: 0 5px 15px 0 rgba(7, 33, 66, 0.15);
  box-shadow: 0 5px 15px 0 rgba(7, 33, 66, 0.15);
  transition: all 1s ease-in-out;
}
.skill-set__bar:after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  border-radius: 10px;
  width: 10%;
}
.skill-set__bar.p100:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(42%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 42%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 42%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 42%, #ff3300);
}
.skill-set__bar.p100.in:after {
  -webkit-animation: ratio100 1.5s forwards;
  animation: ratio100 1.5s forwards;
}
.skill-set__bar.p90:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(42%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 42%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 42%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 42%, #ff3300);
}
.skill-set__bar.p90.in:after {
  -webkit-animation: ratio90 1.5s forwards;
  animation: ratio90 1.5s forwards;
}
.skill-set__bar.p85:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(42%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 42%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 42%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 42%, #ff3300);
}
.skill-set__bar.p85.in:after {
  -webkit-animation: ratio85 1.5s forwards;
  animation: ratio85 1.5s forwards;
}
.skill-set__bar.p80:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(50%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 50%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 50%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 50%, #ff3300);
}
.skill-set__bar.p80.in:after {
  -webkit-animation: ratio80 1.5s forwards;
  animation: ratio80 1.5s forwards;
}
.skill-set__bar.p75:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(65%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 65%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 65%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 65%, #ff3300);
}
.skill-set__bar.p75.in:after {
  -webkit-animation: ratio75 1.5s forwards;
  animation: ratio75 1.5s forwards;
}
.skill-set__bar.p70:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(65%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 65%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 65%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 65%, #ff3300);
}
.skill-set__bar.p70.in:after {
  -webkit-animation: ratio70 1.5s forwards;
  animation: ratio70 1.5s forwards;
}
.skill-set__bar.p60:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(75%, #072142),
    to(#ff3300)
  );
  background-image: -webkit-linear-gradient(
    left,
    #2b3640,
    #072142 75%,
    #ff3300
  );
  background-image: -o-linear-gradient(left, #2b3640, #072142 75%, #ff3300);
  background-image: linear-gradient(to right, #2b3640, #072142 75%, #ff3300);
}
.skill-set__bar.p60.in:after {
  -webkit-animation: ratio60 1.5s forwards;
  animation: ratio60 1.5s forwards;
}
.skill-set__bar.p50:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#2b3640),
    color-stop(65%, #072142)
  );
  background-image: -webkit-linear-gradient(left, #2b3640, #072142 65%);
  background-image: -o-linear-gradient(left, #2b3640, #072142 65%);
  background-image: linear-gradient(to right, #2b3640, #072142 65%);
}
.skill-set__bar.p50.in:after {
  -webkit-animation: ratio50 1.5s forwards;
  animation: ratio50 1.5s forwards;
}
.skill-set__bar.p40:after {
  background-image: -webkit-gradient(
    linear,
    left top,
    right top,
    from(#072142),
    color-stop(65%, #2b3640)
  );
  background-image: -webkit-linear-gradient(left, #072142, #2b3640 65%);
  background-image: -o-linear-gradient(left, #072142, #2b3640 65%);
  background-image: linear-gradient(to right, #072142, #2b3640 65%);
}
.skill-set__bar.p40.in:after {
  -webkit-animation: ratio40 1.5s forwards;
  animation: ratio40 1.5s forwards;
}

@-webkit-keyframes ratio100 {
  0% {
    width: 10%;
  }
  to {
    width: 100%;
  }
}
@keyframes ratio100 {
  0% {
    width: 10%;
  }
  to {
    width: 100%;
  }
}

@-webkit-keyframes ratio90 {
  0% {
    width: 10%;
  }
  to {
    width: 90%;
  }
}

@keyframes ratio90 {
  0% {
    width: 10%;
  }
  to {
    width: 90%;
  }
}

@-webkit-keyframes ratio80 {
  0% {
    width: 10%;
  }
  to {
    width: 80%;
  }
}

@keyframes ratio80 {
  0% {
    width: 10%;
  }
  to {
    width: 80%;
  }
}

@-webkit-keyframes ratio85 {
  0% {
    width: 10%;
  }
  to {
    width: 80%;
  }
}

@keyframes ratio85 {
  0% {
    width: 10%;
  }
  to {
    width: 80%;
  }
}

@-webkit-keyframes ratio70 {
  0% {
    width: 10%;
  }
  to {
    width: 70%;
  }
}

@keyframes ratio70 {
  0% {
    width: 10%;
  }
  to {
    width: 70%;
  }
}

@-webkit-keyframes ratio75 {
  0% {
    width: 10%;
  }
  to {
    width: 70%;
  }
}

@keyframes ratio75 {
  0% {
    width: 10%;
  }
  to {
    width: 70%;
  }
}

@-webkit-keyframes ratio60 {
  0% {
    width: 10%;
  }
  to {
    width: 60%;
  }
}

@keyframes ratio60 {
  0% {
    width: 10%;
  }
  to {
    width: 60%;
  }
}

@-webkit-keyframes ratio50 {
  0% {
    width: 10%;
  }
  to {
    width: 50%;
  }
}

@keyframes ratio50 {
  0% {
    width: 10%;
  }
  to {
    width: 50%;
  }
}

@-webkit-keyframes ratio40 {
  0% {
    width: 10%;
  }
  to {
    width: 40%;
  }
}

@keyframes ratio40 {
  0% {
    width: 10%;
  }
  to {
    width: 40%;
  }
}
@media screen and (max-width: 500px) {
  .skill-set__bar {
    height: 0.7rem;
  }
}
</style>
