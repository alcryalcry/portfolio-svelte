<script lang="ts">
  import Social from './social.svelte';

  const head = {
    img: 'images/photo.jpg',
    name: 'Alexander Shiryakov',
    city: 'Moscow',
    position: 'Frontend Developer',
    description: `
      <p>I have been working in this field for more than a two years. <br/>Participated in the development of various projects, such as landing pages, corporate websites or online stores.</p>
      <p>I am interested in participating in the development of more complex and interesting projects.</p>
    `,
  };
</script>

<div class="info-head">
  <div class="col col--left">
    <picture class="img">
      <img src={head.img} alt={head.name}>
    </picture>
    <div class="text">
      <div class="title title--h3">{head.name}</div>
      <div class="position text--18">{head.position}</div>
      <div class="city text--18">{head.city}</div>
      <div class="description text--16">
        {@html head.description}
      </div>
    </div>
  </div>
  <div class="col col--right">
    <Social />
  </div>
</div>

<style lang="scss">
$p: 3rem;
$pm: 2rem;
$dw: 74rem;

.info-head {
  @include desktop {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
  }
  @include mobile {
    margin-top: -2*$sectionOffsetVerticalMobile;
  }
  .col {
    display: flex;
    flex: 0 0 auto;
    &--left {
      @include desktop {
        flex: 0 0 $dw;
        padding-right: 4rem
      }
      @include mobile {
        display: block;
      }
    }
    &--right {
      justify-content: flex-end;
      @include desktop {
        flex: 0 0 calc(100% - #{$dw})
      }
      @include tablet {
        justify-content: flex-start;
        padding-left: 14rem;
      }
      @include mobile {
        justify-content: flex-start;
      }
    }
  }
  .img {
    display: block;
    flex: 0 0 auto;
    width: 10rem;
    height: 10rem;
    margin-right: 4rem;
    border-radius: 50%;
    overflow: hidden;
    @include mobile {
      width: calc(100% + 2 * #{$pm});
      margin: -#{2 * $pm} -#{$pm} 2rem -#{$pm};
      height: auto;
      border-radius: 0;
    }
    img {
      @include obj-fit
    }
  }

  .text {
    .position {
      margin-top: 1rem;
      color: $lightgray2;
    }
    .city {
      color: $lightgray2;
    }
  }
  .social {
    margin-top: 4rem;
    @include desktop {
      margin: 0;
    }
  }
}
.description {
    margin: 3rem 0 1rem;
    @include desktop {
      margin-bottom: 0;
    }
    :global(p + p) {
      margin-top: 2rem;
    }
  }
</style>
