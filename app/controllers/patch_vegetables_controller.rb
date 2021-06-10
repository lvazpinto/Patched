class PatchVegetablesController < ApplicationController
  def create

    params["patch_vegetable"]["vegetable"].each do |id|
      selected_vegetable = Vegetable.find(id.to_i) if id.to_i != 0
     # patchvegetable = PatchVegetable.new(vegetable: selected_vegetable, patch: )
    end

  end
end
