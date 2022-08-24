<script>
const projects = [
  {
    name: 'Portfolio ( This Page )',
    href: 'https://thealexcode.com/',
    img: 'images/projects-portfolio.png',
    status: 'Complete'
  },
  {
    name: 'Notes [training]',
    href: 'https://notes.thealexcode.com/',
    img: 'images/projects-notes.png',
    status: 'Complete'
  },
  {
    name: 'Graphs Game [training]',
    href: 'https://graphs.thealexcode.com/',
    img: 'images/projects-graphs.png',
    status: 'Under construction'
  }
];
</script>

<div class="projects">
  <div class="row">
    {#each projects as project}
      <div class="col-4 col-t-6">
        <a href={project.href} class="project" target="_blank">
          <div class="img">
            <img src={project.img} alt={project.name}>
          </div>
          <div class="text">
            <div class="title title--h3">{project.name}</div>
            <div class="status text--16">{project.status}</div>
          </div>
        </a>
      </div>
    {/each}
  </div>
</div>


<style lang="scss">
.project {
  display: flex;
  flex-flow: column nowrap;
  height: 100%;
  &:active,
  &:focus {
    .text {
      .title {
        color: $blue;
      }
    }
    .img {
      img {
        transform: scale(1.05);
      }
    }
  }
  @include desktop {
    &:hover {
      .text .title {
        color: $blue;
      }
      .img img {
        transform: scale(1.05);
      }
    }
  }
  .title {
    transition: $tc;
  }
  .status {
    margin-top: 1rem;
    color: $gray;
  }
  .text {
    margin-top: auto;
  }
  .img {
    margin-bottom: 2rem;
    overflow: hidden;
    img {
      width: 100%;
      transform: scale(1);
      transition: transform .5s $easeOutCubic;
    }
  }
}
</style>
