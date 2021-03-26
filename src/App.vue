<template>
  <v-app id="Container">
    <v-container>
      <v-row>
        <v-col sm="12" md="4">
          <CardSummary username="deivit24" />
        </v-col>
        <v-col sm="12" md="8">
          <TabSlider />
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>

<script>
import CardSummary from './components/Cards/CardSummary.vue';
import TabSlider from './components/TabSlider.vue';
export default {
  name: 'App',
  components: {
    CardSummary,
    TabSlider,
  },

  data: () => ({
    //
  }),
};
</script>

<style scoped>
#Container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: linear-gradient(70deg, #000, #2b3640);
}

#Container .container {
  padding-top: 20%;
  max-width: 1000px;
}

@media screen and (max-width: 500px) {
  #Container {
    height: 100%;
  }
}
</style>
