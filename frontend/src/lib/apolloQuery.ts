import { writable } from 'svelte/store';
import type { DocumentNode } from 'graphql';
import client from './apolloClient';

// クエリを実行し、結果を Svelte のストアとして返す関数
export function createApolloQuery(query: DocumentNode, variables?: Record<string, any>) {
  // 初期状態: 読み込み中、データなし、エラーなし
  const store = writable({
    loading: true,
    data: null,
    error: null
  });

  // Apollo Client の query を実行
  client.query({ query, variables })
    .then(result => {
      // クエリ成功時に store を更新
      store.set({
        loading: false,
        data: result.data,
        error: null
      });
    })
    .catch(err => {
      // クエリエラー時に store を更新
      store.set({
        loading: false,
        data: null,
        error: err
      });
    });

  return store;
}
