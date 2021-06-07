class CreateVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :growing_length
      t.integer :vegetable_area

      t.timestamps
    end
  end
end
