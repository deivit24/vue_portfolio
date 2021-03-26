<template>
  <v-card>
    <v-tabs
      v-model="tab"
      background-color="blue-grey darken-2"
      centered
      dark
      icons-and-text
    >
      <v-tabs-slider></v-tabs-slider>
      <template v-for="tab in tabs">
        <v-tab :key="tab.title" :href="'#' + tab.title">
          {{ tab.title }}
          <v-icon>
            {{ tab.icon }}
          </v-icon>
        </v-tab>
      </template>
    </v-tabs>

    <v-tabs-items v-model="tab">
      <v-tab-item v-for="i in tabs" :key="i.title" :value="i.title">
        <v-card class="tabs" color="#e4e4e4" flat>
          <v-card-text><component :is="i.component"></component> </v-card-text>
        </v-card>
      </v-tab-item>
    </v-tabs-items>
  </v-card>
</template>

<script>
import CardBio from './Cards/CardBio';
import CardSkills from './Cards/CardSkills';
import CardProjects from './Cards/CardProjects';
import CardContact from './Cards/CardContact';
export default {
  name: 'TabSlider',
  data: () => ({
    tab: null,
    text: 'sadffas',
    tabs: [
      {
        title: 'BIO',
        icon: 'mdi-account-circle',
        component: CardBio,
      },
      {
        title: 'SKILLS',
        icon: 'mdi-tools',
        component: CardSkills,
      },
      {
        title: 'PROJECTS',
        icon: 'mdi-iframe-braces-outline',
        component: CardProjects,
      },
      {
        title: 'Contact',
        icon: 'mdi-card-account-mail',
        component: CardContact,
      },
    ],
  }),
};
</script>

<style>
.tabs {
  max-height: 600px;
  overflow: hidden;
  overflow-y: scroll;
}
</style>
