<script lang="ts">
  // Apollo Client の core から gql をインポート
  import { gql } from '@apollo/client/core';
  import { createApolloQuery } from '$lib/apolloQuery';

  // シンプルなテスト用 GraphQL クエリ（ここでは __typename を取得する例）
  const TEST_QUERY = gql`
    query {
      __typename
    }
  `;

  // createApolloQuery 関数でクエリを実行し、その結果のストアを生成
  const queryStore = createApolloQuery(TEST_QUERY);
</script>

{#if $queryStore.loading}
  <p>Loading...</p>
{:else if $queryStore.error}
  <p>Error: {$queryStore.error.message}</p>
{:else}
  <pre>{JSON.stringify($queryStore.data, null, 2)}</pre>
{/if}
