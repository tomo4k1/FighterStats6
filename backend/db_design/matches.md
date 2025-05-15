# matches（対戦記録）

| カラム名               | 型        | 制約                | 説明                   |
|------------------------|-----------|---------------------|------------------------|
| id                     | bigint    | PK                  | 対戦ID                 |
| fighting_game_id       | bigint    | FK, NOT NULL        | ゲームID               |
| played_at              | datetime  | NOT NULL            | 対戦日時               |
| opponent_character_id  | bigint    | FK, NOT NULL        | 相手キャラクターID     |
| opponent_rank          | string    |                     | 相手ランク             |
| is_win                 | boolean   | NOT NULL            | 勝敗（true:勝ち）      |
| good_points            | text      |                     | 良かった点メモ         |
| bad_points             | text      |                     | 悪かった点メモ         |
| memo                   | text      |                     | その他メモ             |
| created_at             | datetime  |                     | 作成日時               |
| updated_at             | datetime  |                     | 更新日時               | 