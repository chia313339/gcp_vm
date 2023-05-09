# gcp_vm
gcp vm 懶人包shell

# Vite開發
## npm環境
- 用host建立project資料夾，不要進docker再建，會有權限問題
- 裡外都裝vite穩一點

```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18
```

## 起vite
```
npm create vite@latest
```

## 修改vite.config.js讓外部可以連線，
```
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  server: {
    host: '0.0.0.0',  // 允許任何人連線
    port: 8082  // 將 8080 換成你想要的埠號
  }
})
```
