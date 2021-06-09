class PatchesController < ApplicationController
  def new
    @patch = Patch.new
  end

  def create
    @patch = Patch.new(patch_params)
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
end
