class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.references :fighting_game, null: false, foreign_key: true
      t.datetime :played_at
      t.references :opponent_character, null: false, foreign_key: true
      t.string :opponent_rank
      t.boolean :is_win
      t.text :good_points
      t.text :bad_points
      t.text :memo

      t.timestamps
    end
  end
end
