import tailwindcss from '@tailwindcss/vite';
import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
  plugins: [tailwindcss(), sveltekit()],
  server: {
    host: true,    // 0.0.0.0 にバインドして外部アクセスを可能にする
    port: 3000     // コンテナで使用するポートを 3000 に固定
  }
});
