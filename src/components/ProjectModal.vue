<template>
  <div class="text-center">
    <v-dialog v-model="dialog" width="500">
      <template v-slot:activator="{ on, attrs }">
        <v-btn
          class="project-button"
          color="primary"
          dark
          v-bind="attrs"
          v-on="on"
        >
          Learn More
        </v-btn>
      </template>
      <v-card>
        <v-card-title class="headline ">
          {{ name }}
          <v-spacer></v-spacer>
          <v-btn color="error" text @click="dialog = false">
            Close
          </v-btn>
        </v-card-title>
        <h3 class="ml-6">Stack:</h3>
        <v-card-text>
          {{ stack }}
        </v-card-text>
        <h3 class="ml-6">Description:</h3>
        <v-card-text>
          {{ desc }}
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="primary" text :href="url">
            <v-icon class="mr-2">mdi-web</v-icon>
            Visit
          </v-btn>
          <v-btn color="default" text :href="git">
            <v-icon class="mr-2">mdi-github</v-icon>
            Git Repo
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  name: 'ProjectModal',
  props: {
    name: String,
    stack: String,
    git: String,
    url: String,
    desc: String,
  },
  data: () => ({
    dialog: false,
  }),
};
</script>

<style></style>
