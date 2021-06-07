class CreatePatchVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :patch_vegetables do |t|
      t.date :planting_date
      t.references :vegetable, null: false, foreign_key: true
      t.references :patch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
