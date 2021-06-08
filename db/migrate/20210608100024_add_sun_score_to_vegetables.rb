class AddSunScoreToVegetables < ActiveRecord::Migration[6.0]
  def change
    add_column :vegetables, :sun_score, :integer
  end
end
