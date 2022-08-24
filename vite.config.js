import { sveltekit } from '@sveltejs/kit/vite';
import path from 'path';
import svg from '@poppanator/sveltekit-svg'

/** @type {import('vite').UserConfig} */
const config = {
	plugins: [
    sveltekit(),
    svg(),
  ],
  resolve: {
    alias: {
      $assets: path.resolve('./src/lib/assets'),
      $components: path.resolve('./src/lib/components'),
    }
  }
};

export default config;
