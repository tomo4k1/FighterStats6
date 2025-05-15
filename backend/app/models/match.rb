class Match < ApplicationRecord
  belongs_to :fighting_game
  belongs_to :opponent_character, class_name: 'Character'

  validates :played_at, presence: true
  validates :opponent_character, presence: true
  validates :is_win, inclusion: { in: [true, false] }

  scope :wins, -> { where(is_win: true) }
  scope :losses, -> { where(is_win: false) }

  # ゲームごとの勝率を取得
  def self.win_rate_by_game
    joins(:fighting_game)
      .group('fighting_games.name')
      .select('fighting_games.name, 
              COUNT(*) as total_matches,
              SUM(CASE WHEN matches.is_win THEN 1 ELSE 0 END) as wins')
      .order('total_matches DESC')
  end
end 