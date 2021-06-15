class Vegetable < ApplicationRecord
  SEASONS = [
    {
      name: 'Spring',
      start_month: 3,
      start_day: 21
    },
    {
      name: 'Summer',
      start_month: 6,
      start_day: 21
    },
    {
      name: 'Autumn',
      start_month: 9,
      start_day: 21
    },
    {
      name: 'Winter',
      start_month: 12,
      start_day: 20
    }
  ]

  has_many :patch_vegetables
  has_one :instruction
  has_many :patches, through: :patch_vegetables
  has_one_attached :photo
  validates :planting_season, inclusion: { in: SEASONS.map { |season| season[:name] }}

  def days_until_planting
    date = SEASONS.find { |season| season[:name] == planting_season }
    today = Date.today

    if date[:start_month] >= today.month && date[:start_day] >= today.day
      season_date = Date.new(today.year, date[:start_month], date[:start_day])
    else
      season_date = Date.new(today.year + 1, date[:start_month], date[:start_day])
    end

    (season_date - today).to_i
  end
end
