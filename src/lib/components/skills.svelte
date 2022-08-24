<script>
  const skills = [
    'Vue',
    'Nuxt',
    'Responsive design',
    'JS',
    'REST api',
    'ajax',
    'json',
    'Canvas 2d',
    'Git',
    'Gulp',
    'Webpack 4',
    'SASS/SCSS',
    'Stylus',
    'Pug',
    'HTML5',
    'CSS',
    'jQuery',
  ];
</script>

<div class="skills">
  <ul class="skills__list">
    {#each skills as skill}
      <li class="skills__item text--18">{skill}</li>
    {/each}
  </ul>
</div>


<style lang="scss">
  .skills {
  &__list {
    display: flex;
    align-items: flex-start;
    flex-flow: row wrap;
    margin: -0.5rem;
  }

  &__item {
    color: rgba(0,0,0,.8);
    background: $lightgray;
    padding: .75rem 1.25rem;
    margin: .5rem;
    border-radius: 5px;
  }
}
</style>
