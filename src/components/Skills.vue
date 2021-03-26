<template>
  <div>
    <h1>My Skills</h1>
    <hr />
    <h2>Frontend Skills</h2>
    <ul className="skill-set__list">
      <template v-for="skill in frontendSkills">
        <SingleSkill
          :key="skill.name"
          :name="skill.name"
          :date="skill.date"
          :img="skill.image"
          :num="skill.num"
        />
      </template>
    </ul>

    <h2>Backend Skills</h2>
    <ul className="skill-set__list">
      <template v-for="skill in backendSkills">
        <SingleSkill
          :key="skill.name"
          :name="skill.name"
          :date="skill.date"
          :img="skill.image"
          :num="skill.num"
        />
      </template>
    </ul>

    <h2>Tools</h2>
    <ul className="skill-set__list">
      <template v-for="skill in tools">
        <SingleSkill
          :key="skill.name"
          :name="skill.name"
          :date="skill.date"
          :img="skill.image"
          :num="skill.num"
        />
      </template>
    </ul>
  </div>
</template>

<script>
import SingleSkill from './Cards/SingleSkill';
import { frontendSkills, backendSkills, tools } from '../helpers/skillHelper';
export default {
  name: 'Skills',
  components: {
    SingleSkill,
  },
  data: () => ({
    frontendSkills: frontendSkills,
    backendSkills: backendSkills,
    tools: tools,
  }),
};
</script>

<style scoped>
h1 {
  color: orangered;
  margin-bottom: 10px;
}
h2 {
  margin-top: 50px;
  text-align: center;
  margin-bottom: 15px;
  color: orangered;
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
</style>
