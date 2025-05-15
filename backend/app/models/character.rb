class Character < ApplicationRecord
  belongs_to :fighting_game
  has_many :matches_as_opponent, 
           class_name: 'Match',
           foreign_key: 'opponent_character_id'

  validates :name, presence: true
  validates :name, uniqueness: { scope: :fighting_game_id }

  scope :active, -> { where(is_active: true) }
  scope :for_game, ->(game) { where(fighting_game: game) }

  def win_rate
    matches = matches_as_opponent
    return 0 if matches.empty?
    (matches.wins.count.to_f / matches.count * 100).round(1)
  end
end 