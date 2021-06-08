class AddPlantingSeasonToVegetables < ActiveRecord::Migration[6.0]
  def change
    add_column :vegetables, :planting_season, :string
  end
end
