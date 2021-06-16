class RenamePatchVegetableToCrop < ActiveRecord::Migration[6.0]
  def change
    rename_table :patch_vegetables, :crops
  end
end
