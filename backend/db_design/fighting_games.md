# fighting_games（格闘ゲームマスタ）

| カラム名         | 型        | 制約                | 説明               |
|------------------|-----------|---------------------|--------------------|
| id               | bigint    | PK                  | ゲームID           |
| name             | string    | NOT NULL, UNIQUE    | ゲーム名           |
| short_name       | string    | NOT NULL, UNIQUE    | ゲーム略称         |
| current_version  | string    |                     | 現在のバージョン   |
| is_active        | boolean   | default: true       | 有効フラグ         |
| created_at       | datetime  |                     | 作成日時           |
| updated_at       | datetime  |                     | 更新日時           | 