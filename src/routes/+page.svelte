<script lang="ts">
import Hero from '$components/hero.svelte';
import Skills from '$components/skills.svelte';
import Other from '$components/other.svelte';
import Projects from '$components/projects.svelte';
</script>


<div class="container">
  <div class="info">
    <div class="info__item">
      <div class="info__row">
        <Hero />
      </div>
    </div>
    <div class="info__item">
      <div class="title title--h2">
        Skills
      </div>
      <div class="info__row">
        <Skills />
      </div>
    </div>
    <div class="info__item">
      <div class="title title--h2">
        Projects
      </div>
      <div class="info__row">
        <Projects />
      </div>
    </div>
    <div class="info__item">
      <div class="title title--h2">
        Other
      </div>
      <div class="info__row">
        <Other />
      </div>
    </div>
  </div>
</div>


<style lang="scss">
$p: 3rem;
$pm: 2rem;

.info {
  &__item {
    >.title {
      margin-bottom: 1rem;
    }
    & + & {
      margin-top: 8rem;
      @include mobile {
        margin-top: 6rem;
      }
    }
  }

  &__row {
    background: $white;
    border-radius: 3px;
    padding: $p;
    box-shadow: 0 1px 6px $bordergray;
    @include mobile {
      margin-left: -2rem;
      margin-right: -2rem;
      padding: 2 * $pm $pm;
    }
  }
}
</style>
