<script>
  const other = [
  {
    title: 'My gists',
    links: [
      'https://gist.github.com/alcryalcry'
    ]
  },
  {
    title: 'Usefull pull requests',
    links: [
      'https://github.com/Pixeldenker/vue-body-scroll-lock/pull/6',
      'https://github.com/30-seconds/30-seconds-of-css/pull/146'
    ]
  },
]
</script>

{#each other as item}
  <div class="other">
    <div class="title title--h4">{item.title}</div>
    {#each item.links as link}
    <div class="link-block">
      <a href={link} class="link" target="_blank">{link}</a>
    </div>
    {/each}
  </div>
{/each}

<style lang="scss">
.other {
  & + & {
    margin-top: 4rem;
  }
  .title {
    margin-bottom: 2rem;
  }
  .link-block {
    & + .link-block {
      margin-top: .5rem;
    }
  }
}
</style>
