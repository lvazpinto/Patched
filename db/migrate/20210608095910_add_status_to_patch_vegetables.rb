class AddStatusToPatchVegetables < ActiveRecord::Migration[6.0]
  def change
    add_column :patch_vegetables, :status, :string
  end
end
