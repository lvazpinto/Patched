class Vegetable < ApplicationRecord
  SEASONS = [
    {
      name: 'Spring',
      start_month: 3,
      start_day: 20,
      end_month: 6,
      end_day: 1
    },
    {
      name: 'Summer',
      start_month: 5,
      start_day: 25,
      end_month: 9,
      end_day: 1
    },
    {
      name: 'Autumn',
      start_month: 9,
      start_day: 22,
      end_month: 12,
      end_day: 1
    },
    {
      name: 'Winter',
      start_month: 12,
      start_day: 21,
      end_month: 3,
      end_day: 1
    }
  ]

  has_many :crops
  has_one :instruction
  has_many :patches, through: :crops
  has_one_attached :photo
  validates :planting_season, inclusion: { in: SEASONS.map { |season| season[:name] }}

  def days_until_planting
    date = SEASONS.find { |season| season[:name] == planting_season }
    today = Date.today

    start_date = Date.new(today.year, date[:start_month], date[:start_day])
    end_date = Date.new(today.year, date[:end_month], date[:end_day])

    if (today >= start_date) && (today <= end_date)
      return 0
    end

    if date[:start_month] >= today.month && date[:start_day] >= today.day
      season_date = Date.new(today.year, date[:start_month], date[:start_day])
    else
      season_date = Date.new(today.year + 1, date[:start_month], date[:start_day])
    end

    [(season_date - today).to_i, 0].max
  end
end
