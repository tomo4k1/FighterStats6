class FightingGame < ApplicationRecord
  has_many :characters
  has_many :matches

  validates :name, presence: true, uniqueness: true
  validates :short_name, presence: true, uniqueness: true

  scope :active, -> { where(is_active: true) }

  # ゲームごとの統計情報
  def statistics
    {
      total_matches: matches.count,
      total_characters: characters.count,
      win_rate: calculate_win_rate
    }
  end

  private

  def calculate_win_rate
    return 0 if matches.empty?
    (matches.wins.count.to_f / matches.count * 100).round(1)
  end
end 