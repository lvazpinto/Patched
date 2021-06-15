class RemoveStatusFromPatchVegetables < ActiveRecord::Migration[6.0]
  def change
    remove_column :patch_vegetables, :status
  end
end
