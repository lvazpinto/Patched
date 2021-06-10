class FixOnPatchArea < ActiveRecord::Migration[6.0]
  def change
    change_column :patches, :patch_area, :string, default: "20"
  end
end
