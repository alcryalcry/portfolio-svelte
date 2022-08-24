<script lang="ts">
  import IconEmail from '$assets/icons/social-email.svg';
  import IconFacebook from '$assets/icons/social-facebook.svg';
  import IconGithub from '$assets/icons/social-github.svg';
  import IconLinkedin from '$assets/icons/social-linkedin.svg';
  import IconVK from '$assets/icons/social-vk.svg';

  const socials = [
    {
      name: 'GitHub',
      href: 'https://github.com/alcryalcry',
      icon: IconGithub
    },
    {
      name: 'Email',
      href: 'mailto:alcryalcry@gmail.com',
      icon: IconEmail
    },
    {
      name: 'Facebook',
      href: 'https://www.facebook.com/al.obnx',
      icon: IconFacebook
    },
    {
      name: 'LinkedIn',
      href: 'https://www.linkedin.com/in/alexander-s-08b438142/',
      icon: IconLinkedin
    },
    {
      name: 'VK',
      href: 'https://vk.com/id299096577',
      icon: IconVK
    },
  ]
</script>

<div class="social">
  <ul class="social__list">
    {#each socials as socialItem}
      <li class="social__item">
        <a
          href={socialItem.href}
          title={socialItem.name}
          class="social__link"
          target="_blank"
        >
          <svelte:component this={socialItem.icon}/>
        </a>
      </li>
    {/each}
  </ul>
</div>


<style lang="scss">
  .social {
  &__list {
    display: flex;
    align-items: flex-start;
    flex-flow: row wrap;
    margin: -1rem;
  }

  &__item {
    display: flex;
  }

  &__link {
    width: 5rem;
    height: 5rem;
    padding: 1rem;
    transition: $tc;
    &:active,
    &:focus {
      color: $blue;
    }

    @include desktop {
      &:hover {
        color: $blue;
      }
    }
  }
}
</style>
