<template>
  <div id="Bio">
    <h1>Who Am I</h1>
    <hr />
    <v-container>
      <p class="who_text">
        Born in McAllen, TX and was raised a tennis player. I Lived in:
      </p>
      <ul class="who_list">
        <li>Nashville - Lipscomb University BA in Accounting</li>
        <li>
          New York - Assistant Men's Tennis Coach at
          <strong>West Point.</strong> Go Army, Beat Navy!
        </li>
        <li>
          The United Kingdom - Durham University Masters in Finance
        </li>
        <li>St. Louis - worked at a huge financial service firm</li>
      </ul>
      <p class="who_text">
        And these days I live in Austin, TX- started Armis Financial, build Web
        Applications on the side and currently work at at Aledade as a
        <strong>Senior Software Engineer</strong>.
      </p>

      <p class="who_text">
        I previously worked for <strong>P3F</strong> (Point3 Federal) which
        provides innovative cyberspace solutions, training and services for the
        federal government sector and Intelligence Community.
      </p>
      <p class="who_text">
        I started as a Software Engineer and ended as a Software Enginner II at
        <strong>P3F</strong>. I went from fixing small bugs to leading complex
        feature implementations, software refactoring and being the point of
        contact with our client.
      </p>
      <p class="who_text">
        I then started working at Tribe Dynamics, a <strong>CreatorIQ</strong> company. It was a much larger team, with more processes and 
        a great product team that made life easier. I loved my experience working there. I managed more complex features and 
        really felt like I was able to grow in this company. Unfortunately, there was a company-wide layoff and I was affected by it.
      </p>

      <p class="who_text">
        Thanks to the strong network that I have built at P3F, I was able to get a job at <strong>Aledade</strong> as a Senior Software 
        Engineer. This company has 1.5k+ employees and around 300+ in Engineering and Product. I am working on the BI Knowledge team, 
        specifically with DBT and Snowflake. I work with data to create and manage the data pipeline, from raw data to valuable insights. 
        I focus on enabling the organization to make informed decisions by designing, building, and maintaining data structures and 
        processes that facilitate analysis and reporting. 
      </p>

      <p class="who_text">
        I fell in love with programming back when I was living in the U.K. in
        2016 and everything about it. Always learning and trying to be at the
        forefront of new frontend and backend technologies. On January 2020, I
        decided to enroll the Springboard Software Engineering Bootcamp
      </p>
      <p class="who_text">
        Springboard is in partnership with Rithm School and Colt Steele, 700+
        hour hands-on curriculum with 1:1 industry expert mentor oversight, and
        completion of 4 portfolio projects covering front-end web development,
        back-end web development, and full-stack development. Mastering
        JavaScript, DOM Manipulation, Git, Ajax, jQuery, Python, Flask, SQL,
        PostgreSQL, Node, Express, React, Redux, C.S. fundamentals Data
        Structures and Algorithms
      </p>
      <p class="who_text">
        I reached my goal back in October of 2020 when I accepted an offer to
        work as a Software Engineer. It has been an amazing experience. I am
        slowly trying to figure out where I want this career to take me.
      </p>
    </v-container>
  </div>
</template>

<script>
export default {
  name: "Bio",
};
</script>

<style scoped>
#Bio {
  background: #e4e4e4;
}
h1 {
  color: orangered;
  margin-bottom: 10px;
}
.who_text {
  margin-bottom: 2rem;
  font-size: 1.1rem;
}
.who_list {
  list-style-type: initial;
  list-style-position: outside;
  margin-left: 20px;
  margin-bottom: 1.5rem;
}
.who_list li {
  margin-bottom: 10px;
}
</style>
