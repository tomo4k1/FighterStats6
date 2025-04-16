# frontend/Dockerfile
FROM node:16

# 作業ディレクトリの設定
WORKDIR /app

# package.json と package-lock.json（または yarn.lock）を先にコピー
COPY package*.json ./
RUN npm install

# プロジェクト全体をコピー
COPY . .

# コンテナ内の SvelteKit 開発サーバーのポートを公開
EXPOSE 3000

# SvelteKit の開発サーバーをホストからもアクセス可能な状態で起動
CMD ["npm", "run", "dev", "--", "--host"]
