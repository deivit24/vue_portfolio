<template>
  <v-card class="mx-auto" color="#e4e4e4">
    <v-img height="250" :src="user.avatar_url"></v-img>

    <h1 class="text-center font-weight-light mt-5">{{ user.name }}</h1>
    <p class="text-center mb-1">{{ user.bio }}</p>
    <p class="text-center">
      <v-icon small>mdi-map-marker</v-icon> {{ user.location }}
      <v-icon class="ml-5" small>mdi-office-building-marker-outline</v-icon>
      {{ user.company }}
    </p>

    <v-divider class="mx-4"></v-divider>
    <v-card-text>
      <div>
        Experience in React.js, Vue.js JavaScript, Node.js, Python/Flask,
        MongoDB, Postgres.
      </div>
      <div>
        Always at the forefront of JavaScript Technologies
      </div>
    </v-card-text>
  </v-card>
</template>

<script>
import axios from 'axios';

const BASE_URL = 'https://api.github.com/users';

export default {
  name: 'SummaryCard',
  props: {
    username: {
      type: String,
      required: true,
    },
  },
  data: () => ({
    user: {},
  }),
  created() {
    this.getUser();
  },
  methods: {
    async getUser() {
      const res = await axios.get(`${BASE_URL}/${this.username}`);
      this.user = res.data;
    },
  },
};
</script>
