import { ApolloClient, InMemoryCache } from '@apollo/client/core';

const client = new ApolloClient({
  uri: 'http://backend:3000/graphql', // Docker Compose 内のバックエンドサービス名とポート
  cache: new InMemoryCache()
});

export default client;
