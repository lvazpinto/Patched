class PatchesController < ApplicationController
  before_action :find_patch, only: [:show, :edit]
  def new
    @patch = Patch.new
    @vegetables = Vegetable.all
    @patchvegetable = PatchVegetable.new
  end

  def create
    @patch = Patch.new(patch_params)
    @vegetables = Vegetable.new(vegetable_params)
  end

  def index
    @patches = Patch.all
  end

  def show
  end

  # def edit
    # @patch = Patch.find(params[:id])
  # end
  private

  def patch_params
    params.require(:patch).permit(:vegetables)
  end

  def find_patch
    @patch = Patch.find(params[:id])
  end
end
