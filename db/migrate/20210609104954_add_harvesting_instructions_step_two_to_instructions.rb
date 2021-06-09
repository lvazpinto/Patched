class AddHarvestingInstructionsStepTwoToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :harvesting_instructions_step_two, :text
  end
end
