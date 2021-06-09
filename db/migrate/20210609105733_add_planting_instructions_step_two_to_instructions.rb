class AddPlantingInstructionsStepTwoToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :planting_instructions_step_two, :text
  end
end
