import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
// import path from 'path-browserify';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    host: true,
    strictPort: true,
    port: 5173,
    watch: {
      usePolling: true,
    },
  },
  resolve: {
    alias: {
      path: 'path-browserify',
    },
  },

  esbuild: {
    // jsxInject: `import React from 'react'`,
    jsxFactory: 'React.createElement',
    jsxFragment: 'React.Fragment',

    // Add the following option:
    define: {
      'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV),
      'process.env.REACT_REFRESH': 'true',
    },
  },
});
