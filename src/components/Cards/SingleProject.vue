<template>
  <div id="SingleProject" :style="`background-image: url(${img})`">
    <ProjectModal
      :name="name"
      :stack="stack"
      :desc="desc"
      :git="git"
      :url="url"
    />
  </div>
</template>

<script>
import ProjectModal from '../ProjectModal';
export default {
  name: 'SingleProject',
  components: { ProjectModal },
  props: {
    name: String,
    img: String,
    stack: String,
    url: String,
    git: String,
    desc: String,
  },
};
</script>

<style>
#SingleProject {
  display: flex;
  flex-wrap: wrap;
  position: relative;
  margin: 10px;
  width: 100%;
  height: 184px;
  background-size: cover;
  background-repeat: no-repeat;
  transition: all ease-in-out 0.5s;
}
#SingleProject:hover .project-card {
  filter: blur(4px);
  opacity: 0.3;
  background-color: black;
  cursor: pointer;
}
#SingleProject:hover .project-button {
  opacity: 1;
  z-index: 50;
}
#SingleProject:hover .project-button:hover {
  background-color: #5ab4ff;
}
#SingleProject .project-card {
  display: flex;
  flex-wrap: wrap;
  position: relative;
  width: 100%;
  height: 184px;
  opacity: 0;
  position: relative;
}
#SingleProject .project-button {
  background-color: #40a9ff;
  position: absolute;
  width: 50%;
  top: 33%;
  left: 25%;
  height: 50px;
  font-size: 0.7rem;
  opacity: 0;
}
</style>
