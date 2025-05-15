class CreateFightingGames < ActiveRecord::Migration[7.2]
  def change
    create_table :fighting_games do |t|
      t.string :name
      t.string :short_name
      t.string :current_version
      t.boolean :is_active

      t.timestamps
    end
  end
end
