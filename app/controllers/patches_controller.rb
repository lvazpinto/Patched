class PatchesController < ApplicationController
  def new
    @patch = Patch.new
    @vegetables = Vegetable.all
    @patchvegetable = PatchVegetable.new
  end

  def create
    @patch = Patch.new(patch_params)
    @vegetables = Vegetable.new(vegetable_params)
  end

  def show
  end

  # def edit
  #   @patch = Patch.find(params[:id])
  # end

  private

  def patch_params
    params.require(:patch).permit(:vegetables)
  end

  def vegetable_params
    params.require(:vegetables).permit(:name)
  end
end
