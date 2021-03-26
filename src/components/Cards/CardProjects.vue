<template>
  <div>
    <h1>My Projects</h1>
    <hr />
    <v-row class="pa-3">
      <template v-for="i in projects">
        <v-col :key="i.name" cols="6">
          <SingleProject
            :name="i.name"
            :img="i.image"
            :stack="i.stack"
            :desc="i.desc"
            :git="i.git"
            :url="i.url"
          />
        </v-col>
      </template>
    </v-row>
  </div>
</template>

<script>
import SingleProject from './SingleProject';
import { projects } from '../../helpers/projectHelper';
export default {
  name: 'CardProjects',
  components: { SingleProject },
  data: () => ({
    projects: projects,
  }),
};
</script>

<style scope>
h1 {
  color: orangered;
  margin-bottom: 10px;
}
</style>
