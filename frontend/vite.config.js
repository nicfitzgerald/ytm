import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import path from 'path'

export default defineConfig({
  resolve: {
    alias: {
      '@wails': path.resolve(__dirname, './wailsjs/go/main'),
    },
  },
  plugins: [react()],
})
