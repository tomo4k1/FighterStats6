class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image_url
      t.boolean :is_active
      t.references :fighting_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
