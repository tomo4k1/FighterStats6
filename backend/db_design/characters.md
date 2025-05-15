# characters（キャラクターマスタ）

| カラム名         | 型        | 制約                | 説明               |
|------------------|-----------|---------------------|--------------------|
| id               | bigint    | PK                  | キャラクターID     |
| fighting_game_id | bigint    | FK, NOT NULL        | ゲームID           |
| name             | string    | NOT NULL            | キャラクター名     |
| image_url        | string    |                     | 画像URL            |
| is_active        | boolean   | default: true       | 有効フラグ         |
| created_at       | datetime  |                     | 作成日時           |
| updated_at       | datetime  |                     | 更新日時           | 