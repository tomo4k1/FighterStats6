# ER図

```mermaid
erDiagram
    FIGHTING_GAMES ||--o{ CHARACTERS : "has"
    FIGHTING_GAMES ||--o{ MATCHES : "has"
    CHARACTERS ||--o{ MATCHES : "opponent"

    FIGHTING_GAMES {
        bigint id PK
        string name UK "NOT NULL"
        string short_name UK "NOT NULL"
        string current_version
        boolean is_active "default: true"
        datetime created_at
        datetime updated_at
    }

    CHARACTERS {
        bigint id PK
        bigint fighting_game_id FK "NOT NULL"
        string name "NOT NULL"
        string image_url
        boolean is_active "default: true"
        datetime created_at
        datetime updated_at
    }

    MATCHES {
        bigint id PK
        bigint fighting_game_id FK "NOT NULL"
        datetime played_at "NOT NULL"
        bigint opponent_character_id FK "NOT NULL"
        string opponent_rank
        boolean is_win "NOT NULL"
        text good_points
        text bad_points
        text memo
        datetime created_at
        datetime updated_at
    }
```

## リレーションの説明

1. FIGHTING_GAMES と CHARACTERS
   - 1対多の関係
   - 1つのゲームに対して複数のキャラクターが存在
   - キャラクターは必ず1つのゲームに属する

2. FIGHTING_GAMES と MATCHES
   - 1対多の関係
   - 1つのゲームに対して複数の対戦記録が存在
   - 対戦記録は必ず1つのゲームに属する

3. CHARACTERS と MATCHES
   - 1対多の関係
   - 1つのキャラクターに対して複数の対戦記録が存在（相手キャラクターとして）
   - 対戦記録は必ず1つの相手キャラクターを持つ 